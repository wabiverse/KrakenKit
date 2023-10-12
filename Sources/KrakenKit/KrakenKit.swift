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

import RealityKit
import SwiftUI

public struct ContentView: View
{
  public init()
  {}

  public var body: some View
  {
    VStack
    {
      Image("Splash", bundle: .kraken)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .overlay(content:
          {
            HStack
            {
              VStack
              {
                Image("wabi.hexagon.fill", bundle: .kraken)
                  .aspectRatio(contentMode: .fit)
                  .foregroundStyle(.secondary, .ultraThinMaterial)
                  .font(.system(size: 42))
                  .padding(.top, 17)

                Spacer()
              }
              .frame(alignment: .leading)
              .padding(2)

              Spacer()
            }
            .frame(alignment: .leading)
          })

      Text("The Universal Reality Engine")
        .fontWeight(.black)
        .foregroundStyle(.primary)
        .padding(.top, 7)

      VStack
      {
        Button
        {}
        label:
        {
          HStack
          {
            Image(systemName: "globe.americas.fill")
              .aspectRatio(contentMode: .fill)
              .foregroundStyle(.green.opacity(0.8))
              .font(.system(size: 16))
              .padding(2)
              .background(RoundedRectangle(cornerRadius: 8, style: .continuous).fill(.blue.opacity(0.2)))
              .frame(width: 85, alignment: .trailing)

            Spacer()

            Text("Create Universe")
              .fontWeight(.bold)
              .foregroundStyle(.secondary)
              .frame(width: 165, alignment: .leading)
          }
          .frame(width: 250, alignment: .center)
          .padding()
          .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(.quaternary))
        }
        .buttonStyle(PlainButtonStyle())

        Button
        {}
        label:
        {
          HStack
          {
            Image(systemName: "network")
              .aspectRatio(contentMode: .fill)
              .foregroundStyle(.purple.opacity(0.8))
              .font(.system(size: 16))
              .padding(2)
              .background(RoundedRectangle(cornerRadius: 8, style: .continuous).fill(.purple.opacity(0.2)))
              .frame(width: 85, alignment: .trailing)

            Spacer()

            Text("Metaverse Portal")
              .fontWeight(.bold)
              .foregroundStyle(.secondary)
              .frame(width: 165, alignment: .leading)
          }
          .frame(width: 250, alignment: .center)
          .padding()
          .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(.quaternary))
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.bottom, 4)

        Spacer()
      }
      .padding()

      Spacer()
    }
    .frame(width: 400, height: 400)
    .background(.quaternary)
    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
    .padding()
  }
}
