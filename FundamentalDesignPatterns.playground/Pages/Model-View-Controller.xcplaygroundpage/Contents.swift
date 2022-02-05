/*:
 [Previous](@previous)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Next](@next)
 
 # Model-view-controller (MVC)
 - - - - - - - - - -
 ![MVC Diagram](MVC_Diagram.png)
 
 Паттерн модель-представление-контроллер (MVC) разделяет объекты на три типа: модели, представления и контроллеры.
 
 **Models** хранят данные приложения. Обычно это структуры или простые классы.
 
 **Views** отображают визуальные элементы и элементы управления на экране. Обычно они являются подклассами `UIView`.
 
 **Controllers** координация между моделями и представлениями. Обычно они являются подклассами `UIViewController`.
 
 ## Code Example
 */
import UIKit

// MARK: - Address
public struct Address {
  public var street: String
  public var city: String
  public var state: String
  public var zipCode: String
}

// MARK: - AddressView
public final class AddressView: UIView {
  @IBOutlet public var streetTextField: UITextField!
  @IBOutlet public var cityTextField: UITextField!
  @IBOutlet public var stateTextField: UITextField!
  @IBOutlet public var zipCodeTextField: UITextField!
}

// MARK: - AddressViewController
public final class AddressViewController: UIViewController {

  // MARK: - Properties
  public var address: Address?
  public var addressView: AddressView! {
    guard isViewLoaded else { return nil }
    return (view as! AddressView)
  }
}
