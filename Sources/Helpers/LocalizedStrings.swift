import Foundation

enum LocalizedStrings: String {
  case SCAN_BARCODE_TITLE
  case BUTTON_CLOSE
  case BUTTON_SETTINGS
  case INFO_DESCRIPTION_TEXT
  case INFO_LOADING_TITLE
  case NO_PRODUCT_ERROR_TITLE
  case ASK_FOR_PERMISSION_TEXT
  
  func localized() -> String {
    let language = UserDefaults.standard.string(forKey: "AppleLanguage") ?? "en"
    
    switch language {
    case "es-US":
      switch self {
      case .SCAN_BARCODE_TITLE: return "Escanea el codigo de barra"
      case .BUTTON_CLOSE: return "Cerrar"
      case .BUTTON_SETTINGS: return "Configuración"
      case .INFO_DESCRIPTION_TEXT: return "Coloque el codigo de barra dentro de la ventana para escanear. La busqueda iniciara automaticamente."
      case .INFO_LOADING_TITLE: return "Buscando su producto..."
      case .NO_PRODUCT_ERROR_TITLE: return "Producto no encontrado."
      case .ASK_FOR_PERMISSION_TEXT: return "Para poder escanear los codigos de barra, Tiene que proveer los permisos de la cámara en tu configuración."
      }
    case "fr":
      switch self {
      case .SCAN_BARCODE_TITLE: return "Scan code-barre"
      case .BUTTON_CLOSE: return "Fermer"
      case .BUTTON_SETTINGS: return "Réglages"
      case .INFO_DESCRIPTION_TEXT: return "Placer le code-barre à scanner dans la fenêtre. La recherche commence automatiquement."
      case .INFO_LOADING_TITLE: return "Recherche ..."
      case .NO_PRODUCT_ERROR_TITLE: return "Aucun code-barre n'a pu être reconnu."
      case .ASK_FOR_PERMISSION_TEXT: return "Pour la reconnaissance des codes-barre, vous devez autoriser l'application à utiliser la caméra."
      }
      
    default:
      switch self {
      case .SCAN_BARCODE_TITLE: return "Scan barcode"
      case .BUTTON_CLOSE: return "Close"
      case .BUTTON_SETTINGS: return "Settings"
      case .INFO_DESCRIPTION_TEXT: return "Place the barcode within the window to scan. The search will start automatically."
      case .INFO_LOADING_TITLE: return "Looking for your product..."
      case .NO_PRODUCT_ERROR_TITLE: return "No product found."
      case .ASK_FOR_PERMISSION_TEXT: return "In order to scan barcodes you have to allow camera under your settings."
      }
    }
  }
}
