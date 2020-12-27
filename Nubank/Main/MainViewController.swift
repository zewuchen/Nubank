//
//  ViewController.swift
//  Nubank
//
//  Created by Zewu Chen on 26/12/20.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: Data
    private var optionsFooterData: [OptionFooterBar]? {
        didSet {
            optionsFooterCollectionView.reloadData()
        }
    }
    
    // MARK: Views
    let optionsFooterCollectionFlowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: DesignSystem.OptionsFooterBar.insetDefault.rawValue, bottom: 0, right: DesignSystem.OptionsFooterBar.insetDefault.rawValue)
        return layout
    }()
    
    lazy var optionsFooterCollectionView: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: optionsFooterCollectionFlowLayout)
        collection.delegate = self
        collection.dataSource = self
        collection.register(OptionFooterBarCollectionViewCell.self, forCellWithReuseIdentifier: Identifier.Cell.optionFooterBar)
        collection.backgroundColor = .clear
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.Nubank.purple
        setupViews()
        setupNavigation()
        
        // Retrieving data for options footer
        ParserJson.shared.fromFile(file: "optionsFooter", expecting: [OptionFooterBar].self) { (result) in
            switch result {
            case let .success(dados):
                    self.optionsFooterData = dados

            case let .failure(erro):
                    fatalError("Erro ao dar parse nas opções do footer: \(erro)")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setNeedsStatusBarAppearanceUpdate()
    }
    
    // MARK: Setup
    func setupNavigation() {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

// MARK: - Autolayout
extension MainViewController: ViewCodable {
    func setupViewHierarchy() {
        view.addSubview(optionsFooterCollectionView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            optionsFooterCollectionView.heightAnchor.constraint(equalToConstant: view.frame.height / 6),
            optionsFooterCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            optionsFooterCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            optionsFooterCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.height / DesignSystem.OptionsFooterBar.width.rawValue
        let height = collectionView.frame.height * DesignSystem.OptionsFooterBar.height.rawValue
        
        return CGSize(width: width, height: height)
    }
}

// MARK: - UICollectionViewDataSource
extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return optionsFooterData?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifier.Cell.optionFooterBar, for: indexPath) as? OptionFooterBarCollectionViewCell else {
            return UICollectionViewCell()
        }
        guard let data = optionsFooterData?[indexPath.row] else { return UICollectionViewCell() }
        cell.optionViewModel = OptionFooterBarViewModel(option: OptionFooterBar(title: data.title, icon: data.icon))
        return cell
    }
    
}

// MARK: - UICollectionViewDelegate
extension MainViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Implementation", message: "This feature is not implemented yet :(", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
              switch action.style {
              case .default:
                self.dismiss(animated: true, completion: nil)

              case .cancel:
                self.dismiss(animated: true, completion: nil)

              case .destructive:
                self.dismiss(animated: true, completion: nil)

              @unknown default:
                self.dismiss(animated: true, completion: nil)
              }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}
