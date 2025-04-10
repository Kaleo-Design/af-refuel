//
//  HKPlugin.swift
//  Runner
//
//  Created by Sam Harris on 4/10/25.
//

import Foundation

import Flutter
import UIKit

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
    HealthKitPlugin.register(with: registry.registrar(forPlugin: "HealthKitPlugin")!)
}
