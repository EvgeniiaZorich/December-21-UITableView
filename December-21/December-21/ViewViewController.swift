//
//  ViewController.swift
//  December-21
//
//  Created by Евгения Зорич on 21.12.2022.
//

import UIKit

class ViewViewController: UIViewController {
    var selectedText: String?
    var selectedNumber = 0
    var selectedNumber1 = 0
    var descriptions = ["Кладет информацию в таблицу", "Кнопка", "Управление яркостью, звуком", "Переключатель", "Текст", "Панель управления", "Панель навигации", "Управление всплывающими предупреждениями", "Управление внешними ссылками", "Управление ячейками таблицы", "Особый тип контейнера, используемый для визуального группирования одного или нескольких элементов, похожих на кнопки"]
    
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Description"
        textView.text = descriptions[selectedNumber - 1]
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


