//
//  ContentView.swift
//  Example
//
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Animation")) {
                    NavigationLink(destination: LotteryView()) {
                        PageRow(title: "LotteryView", subTitle: "Rotation Lottery")
                    }
                }
                Section(header: Text("WebView")) {
                    NavigationLink(destination: WebViewPage()) {
                        PageRow(title: "WebView", subTitle: "Displays a web browser inside app")
                    }
                    NavigationLink(destination: ControllerPage<UIKitController>()) {
                        PageRow(title: "UIViewController", subTitle: "Web UIViewController")
                    }
                }
                Section(header: Text("Text")) {
                    NavigationLink(destination: TextPage()) {
                        PageRow(title: "Text",subTitle: "Displays a view with text and link")
                    }
                    NavigationLink(destination: TextFieldPage()) {
                        PageRow(title: "TextField", subTitle: "Displays a text field")
                    }
                    NavigationLink(destination: TextFieldPage()) {
                        PageRow(title: "SecureField", subTitle: "Displays a secure text field")
                    }
                    NavigationLink(destination: ImagePage()) {
                        PageRow(title: "Image",subTitle: "Displays images of various sizes")
                    }
                    NavigationLink(destination: WebImagePage()) {
                        PageRow(title: "WebImage",subTitle: "Displays a web image")
                    }
                }
                Section(header: Text("Buttons")) {
                    NavigationLink(destination: ButtonPage()) {
                        PageRow(title: "Button",subTitle: "Displays a button")
                    }
                    NavigationLink(destination: NavigationButtonPage()) {
                        PageRow(title: "NavigationButton",subTitle: "Displays button that navigates to a new view")
                    }
                    NavigationLink(destination: Text("I'm Text")) {
                        PageRow(title: "PresentationButton",subTitle: "Displays text")
                    }
                    NavigationLink(destination: EditButtonPage()) {
                        PageRow(title: "EditButton",subTitle: "Displays a list a edit button that allows for reordering or deleting list items")
                    }
                }
                
                Section(header: Text("Functionality")) {
                    NavigationLink(destination: PickerPage()) {
                        PageRow(title: "Picker",subTitle: "Displays a picker")
                    }
                    NavigationLink(destination: DatePickerPage()) {
                        PageRow(title: "DatePicker",subTitle: "Displays a date picker")
                    }
                    NavigationLink(destination: TogglePage()) {
                        PageRow(title: "Toggle",subTitle: "Displays a toggle button")
                    }
                    NavigationLink(destination: SliderPage()) {
                        PageRow(title: "Slider",subTitle: "Displays a sliding bar that changes values")
                    }
                    NavigationLink(destination: StepperPage()) {
                        PageRow(title: "Stepper",subTitle: "Displays a stepper that incriments count")
                    }

                }
                
                Section(header: Text("Layout")) {
                    NavigationLink(destination: HStackPage()) {
                        PageRow(title: "HStack",subTitle: "Displays a HStack")
                    }
                    NavigationLink(destination: VStackPage()) {
                        PageRow(title: "VStack",subTitle: "Displays a VStack")
                    }
                    NavigationLink(destination: ZStackPage()) {
                        PageRow(title: "ZStack",subTitle: "Displays a ZStack")
                    }
                    NavigationLink(destination: ListPage()) {
                        PageRow(title: "List",subTitle: "Displays a List")
                    }
                    NavigationLink(destination: ScrollViewPage()) {
                        PageRow(title: "ScrollView",subTitle: "Displays a scroll view")
                    }
                    NavigationLink(destination: ForEachPage()) {
                        PageRow(title: "ForEach",subTitle: "Displays a forEach")
                    }
                    NavigationLink(destination: GroupPage()) {
                        PageRow(title: "Group",subTitle: "Displays a Group")
                    }.frame(height: 80)
                    NavigationLink(destination: SectionPage()) {
                        PageRow(title: "Section",subTitle: "Displays a section")
                    }.frame(height: 80)
                    NavigationLink(destination: FormPage(firstName: "", lastName: "")) {
                           PageRow(title: "Form",subTitle: "Displays a form")
                    }
                }
                Section(header: Text("NavigationViews")) {
                    NavigationLink(destination: NavigationViewPage()) {
                        PageRow(title: "NavigationView",subTitle: "Displays a navigationView")
                    }
                    NavigationLink(destination: TableViewPage()) {
                        PageRow(title: "TabBar",subTitle: "Displays a TabBar")
                    }
                }
                Section(header: Text("Alerts ")) {
                    NavigationLink(destination: AlertPage()) {
                        PageRow(title: "Alert",subTitle: "Displays an alert")
                    }
                    NavigationLink(destination: ActionSheetPage()) {
                        PageRow(title: "ActionSheet",subTitle: "Displays an action sheet")
                    }
                    NavigationLink(destination: ModalPage()) {
                        PageRow(title: "Model",subTitle: "Displays a model")
                    }
                    NavigationLink(destination: PopoverPage()) {
                        PageRow(title: "Popover",subTitle: "Displays a popover")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Example"), displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                print("Tap")
            }, label: {
                Text("Right").foregroundColor(.orange)
            }))

        }
    }
    
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.light)
    }
}
#endif

