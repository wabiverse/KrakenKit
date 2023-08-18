/* -----------------------------------------------------------
 * :: :  G  H  O  S  T  :                                   ::
 * -----------------------------------------------------------
 * @wabistudios :: cosmos :: realms
 *
 * CREDITS.
 *
 * T.Furby              @furby-tm       <devs@wabi.foundation>
 * D.Kirkpatrick  @dkirkpatrick99  <d.kirkpatrick99@gmail.com>
 *
 *         Copyright (C) 2023 Wabi Animation Studios, Ltd. Co.
 *                                        All Rights Reserved.
 * -----------------------------------------------------------
 *  . x x x . o o o . x x x . : : : .    o  x  o    . : : : .
 * ----------------------------------------------------------- */

import RealityKit
import SwiftUI

public struct RobotView: View
{
  public init()
  {}

  public var body: some View
  {
    RealityView
    { content in

      if let robot = try? await ModelEntity(named: "robot", in: Bundle.main)
      {
        content.add(robot)
      }
      Task
      {
        // Asynchronously perform any additional work to configure
        // the content after the system renders the view.
      }
    }
  }
}
