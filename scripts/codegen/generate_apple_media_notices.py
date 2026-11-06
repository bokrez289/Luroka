#!/usr/bin/env python3
"""Collect a partial notice bundle from the iOS media build's pinned sources."""

import argparse
import hashlib
from pathlib import Path
from urllib.request import urlopen

ROOT = Path(__file__).resolve().parents[2]
SOURCES = (
    ('mpv copyright', 'https://raw.githubusercontent.com/mpv-player/mpv/41f6a645068483470267271e1d09966ca3b9f413/Copyright', 'bfe9ee4cceabcb8ecbfadf208d04156f73d801e6a57369a5606bb8341e204a23'),
    ('mpv GPL', 'https://raw.githubusercontent.com/mpv-player/mpv/41f6a645068483470267271e1d09966ca3b9f413/LICENSE.GPL', 'edaef632cbb643e4e7a221717a6c441a4c1a7c918e6e4d56debc3d8739b233f6'),
    ('mpv LGPL', 'https://raw.githubusercontent.com/mpv-player/mpv/41f6a645068483470267271e1d09966ca3b9f413/LICENSE.LGPL', '72b672113d642cbb8ef5dcc76938db801983c56e50b1400ab930f1a64d6dc8d9'),
    ('FFmpeg licensing', 'https://raw.githubusercontent.com/FFmpeg/FFmpeg/894da5ca7d742e4429ffb2af534fcda0103ef593/LICENSE.md', '2e1d16c72fd74e12063776371da757322f8b77589386532f4fd8634bde7de1af'),
    ('libass license', 'https://raw.githubusercontent.com/libass/libass/4a05d8127f525943ebf45fdc6497c9e665947f0d/COPYING', 'f7e30699d02798351e7f839e3d3bfeb29ce65e44efa7735c225464c4fd7dfe9c'),
    ('OpenSSL 3.3.5 license', 'https://raw.githubusercontent.com/openssl/openssl/openssl-3.3.5/LICENSE.txt', '7d5450cb2d142651b8afa315b5f238efc805dad827d91ba367d8516bc9d49e7a'),
    ('FreeType 2.12.1 licensing overview', 'https://raw.githubusercontent.com/freetype/freetype/e8ebfe988b5f57bfb9a3ecb13c70d9791bce9ecf/LICENSE.TXT', 'c85e842b7ff04d95dab7d68e812773de0f8b67940e5449d35b42c66eb0f619fe'),
    ('FreeType 2.12.1 FTL', 'https://raw.githubusercontent.com/freetype/freetype/e8ebfe988b5f57bfb9a3ecb13c70d9791bce9ecf/docs/FTL.TXT', '08c135755dd589039470f1fdbb400daaabaaa50d0b366d19cebff4d22986baa1'),
    ('FriBidi 1.0.12 license', 'https://raw.githubusercontent.com/fribidi/fribidi/6428d8469e536bcbb6e12c7b79ba6659371c435a/COPYING', '32434afcc8666ba060e111d715bfdb6c2d5dd8a35fa4d3ab8ad67d8f850d2f2b'),
    ('HarfBuzz 8.1.1 license', 'https://raw.githubusercontent.com/harfbuzz/harfbuzz/1d665c2b521512cdd56964138fc601debd1f1177/COPYING', 'ba8f810f2455c2f08e2d56bb49b72f37fcf68f1f4fade38977cfd7372050ad64'),
    ('libdovi 3.3.2 license', 'https://raw.githubusercontent.com/quietvoid/dovi_tool/4fd2b2235c9f93582dd4a00e65ee34a07800afd7/dolby_vision/LICENSE', 'f35d4515dd8d81c7996af2b20e9605561d1af0c21bc12ba7cc4fa4c60aed2178'),
    ('Little CMS 2.17 license', 'https://raw.githubusercontent.com/mm2/Little-CMS/5176347635785e53ee5cee92328f76fda766ecc6/LICENSE', '6dbd60437f8ef91d8de1f08ad75882547fd4931bfcc3566a0735f28db1484d31'),
    ('shaderc v2025.5 license', 'https://raw.githubusercontent.com/google/shaderc/c4b0af6c3664cd8b33ffddf452514e02a173b4d6/LICENSE', 'c71d239df91726fc519c6eb72d318ec65820627232b2f796219e87dcf35d0ab4'),
    ('shaderc bundled glslang notice', 'https://raw.githubusercontent.com/google/shaderc/c4b0af6c3664cd8b33ffddf452514e02a173b4d6/third_party/LICENSE.glslang', 'b5a00e94f058edc87e05978329b55730d8689abe61205d9018443d03de4f07da'),
    ('shaderc bundled SPIRV-Tools notice', 'https://raw.githubusercontent.com/google/shaderc/c4b0af6c3664cd8b33ffddf452514e02a173b4d6/third_party/LICENSE.spirv-tools', '47e20ce182bc68fab1a0cfb129b03c326aaf4f2b6b7905aa9d376d31018bd29f'),
    ('dav1d 1.5.3 license', 'https://raw.githubusercontent.com/videolan/dav1d/b546257f770768b2c88258c533da38b91a06f737/COPYING', 'dd92c3c2247c5651606fc23a5e2d6a1ebc5ace9a3e49cbde0e12f05ad1cb1ee5'),
    ('libplacebo 7.351.0 license', 'https://raw.githubusercontent.com/haasn/libplacebo/3188549fba13bbdf3a5a98de2a38c2e71f04e21e/LICENSE', 'b3aa400aca6d2ba1f0bd03bd98d03d1fe7489a3bbb26969d72016360af8a5c9d'),
    ('SPIRV-Cross license', 'https://raw.githubusercontent.com/KhronosGroup/SPIRV-Cross/2c32b6bf86f3c4a5539aa1f0bacbd59fe61759cf/LICENSE', 'cfc7749b96f63bd31c3c42b5c471bf756814053e847c10f3eb003417bc523d30'),
    ('libunibreak 6.1 candidate authors', 'https://raw.githubusercontent.com/adah1972/libunibreak/304585d8e2d63187507368d612c3d5fff1486368/AUTHORS', '34e46e31651a6fe15d1a802d7aaa0f349a0529b84d7cf03eb00c96c9f07f789a'),
    ('libunibreak 6.1 candidate license', 'https://raw.githubusercontent.com/adah1972/libunibreak/304585d8e2d63187507368d612c3d5fff1486368/LICENCE', '0c57e2ec42ece17791a75d2f9b2f8e0663181be008667a507f765b3ef22522db'),
    ('uchardet 0.0.8 licenses', 'https://raw.githubusercontent.com/oe-mirrors/uchardet/ae6302a016088ad07177f86d417b20010053632b/COPYING', '107a29ccdd2d778aa2df5462f85dddfa099059abd22e064e07ec2cc9bafc37cd'),
    ('uavs3d candidate license', 'https://raw.githubusercontent.com/uavs3/uavs3d/0e20d2c291853f196c68922a264bcd8471d75b68/COPYING', '5a8dcb7da222df8a81b6e334000f859248196335e2d28e1db9f3c552827d7cdf'),
)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    sections = [
        'Partial source notices for Apple media dependencies and the versions named by their build scripts. This does not establish exact prebuilt provenance or include all third-party notices.',
        'Independent JPEG Group attribution: This software is based in part on the work of the Independent JPEG Group. FFmpeg contains adaptations of IJG source; see FFmpeg LICENSE.md and the corresponding source for details.',
        'libbluray: The LGPL 2.1 license text at the libplacebo license section below is byte-identical to the COPYING file from the preserved libbluray 1.4.0 source (commit 9f07fbb2077be7a40b062bcf2463a9941c2a3b13). Exact correspondence to the prebuilt requires further verification.',
    ]
    for name, url, expected in SOURCES:
        with urlopen(url, timeout=30) as response:
            content = response.read()
        if hashlib.sha256(content).hexdigest() != expected:
            raise SystemExit(f'Unexpected notice digest: {name}')
        sections.append(f'===== {name} =====\nSource: {url}\nSHA-256: {expected}\n\n{content.decode("utf-8").rstrip()}')
    result = '\n\n'.join(sections) + '\n'
    output = ROOT / 'assets/licenses/apple-media-source-notices.txt'
    if args.check:
        if output.read_text(encoding='utf-8') != result:
            raise SystemExit('Apple media notice bundle differs from the pinned sources')
    else:
        output.write_text(result, encoding='utf-8')
    print(f'Verified {len(SOURCES)} Apple media source notices')


if __name__ == '__main__':
    main()
