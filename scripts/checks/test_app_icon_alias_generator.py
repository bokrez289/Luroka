#!/usr/bin/env python3
"""Verify generated Android aliases point to the real launcher activity."""
import importlib.util
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SPEC = importlib.util.spec_from_file_location('generate_app_icons', ROOT / 'scripts/codegen/generate_app_icons.py')
GENERATOR = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(GENERATOR)
ANDROID = '{http://schemas.android.com/apk/res/android}'


class AppIconAliasGeneratorTest(unittest.TestCase):
    def test_generated_aliases_match_manifest_and_existing_activity(self):
        application = ET.parse(ROOT / 'android/app/src/main/AndroidManifest.xml').getroot().find('application')
        activities = {item.get(ANDROID + 'name') for item in application.findall('activity')}
        aliases = {item.get(ANDROID + 'name'): item for item in application.findall('activity-alias')}
        for icon in GENERATOR.ICONS:
            wrapper = ET.fromstring(
                '<manifest xmlns:android="http://schemas.android.com/apk/res/android">'
                + GENERATOR._alias_xml(icon) + '</manifest>'
            )
            generated = wrapper.find('activity-alias')
            name = generated.get(ANDROID + 'name')
            self.assertIn(name, aliases)
            target = generated.get(ANDROID + 'targetActivity')
            self.assertIn(target, activities)
            self.assertEqual(target, aliases[name].get(ANDROID + 'targetActivity'))


if __name__ == '__main__':
    unittest.main()
