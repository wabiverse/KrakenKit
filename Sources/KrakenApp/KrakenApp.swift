/* --------------------------------------------------------------
 * :: :  K  R  A  K  E  N  :                                   ::
 * --------------------------------------------------------------
 *
 * CREDITS.
 *
 * T.Furby                @furby-tm       <devs@wabi.foundation>
 *
 *                                           Copyright (C) 2023.
 *                                          All Rights Reserved.
 * -------------------------------------------------------------
 *  . x x x . o o o . x x x . : : : .    o  x  o    . : : : .
 * ------------------------------------------------------------- */

import KrakenKit
import RealityKit
import SwiftUI

@main
struct KrakenKitApp: App
{
  let identifier = "foundation.wabi.KrakenApp"

  var body: some SwiftUI.Scene
  {
    WindowGroup("Kraken", id: "kraken")
    {
      ZStack
      {
        Color.clear.ignoresSafeArea()

        ContentView()
      }
      .background(VisualEffectView(material: .sidebar).ignoresSafeArea())
    }
    #if os(macOS)
    .windowStyle(.hiddenTitleBar)
    #endif /* os(macOS) */
  }
}

#if os(macOS)
  struct VisualEffectView: NSViewRepresentable
  {
    let material: NSVisualEffectView.Material

    func makeNSView(context _: Context) -> NSVisualEffectView
    {
      let visualEffectView = NSVisualEffectView()
      visualEffectView.material = material
      visualEffectView.state = NSVisualEffectView.State.active
      return visualEffectView
    }

    func updateNSView(_ visualEffectView: NSVisualEffectView, context _: Context)
    {
      visualEffectView.material = material
    }
  }
#endif /* os(macOS) */
