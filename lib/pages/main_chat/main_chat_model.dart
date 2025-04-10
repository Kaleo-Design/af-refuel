import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/ui_components/ui_custom_dropdown/ui_custom_dropdown_widget.dart';
import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/chat_components/chat_bubbles/chat_bubbles_widget.dart';
import '/index.dart';
import 'main_chat_widget.dart' show MainChatWidget;
import 'package:flutter/material.dart';

class MainChatModel extends FlutterFlowModel<MainChatWidget> {
  ///  Local state fields for this page.

  List<ChatMessagesStruct> currentChat = [];
  void addToCurrentChat(ChatMessagesStruct item) => currentChat.add(item);
  void removeFromCurrentChat(ChatMessagesStruct item) =>
      currentChat.remove(item);
  void removeAtIndexFromCurrentChat(int index) => currentChat.removeAt(index);
  void insertAtIndexInCurrentChat(int index, ChatMessagesStruct item) =>
      currentChat.insert(index, item);
  void updateCurrentChatAtIndex(
          int index, Function(ChatMessagesStruct) updateFn) =>
      currentChat[index] = updateFn(currentChat[index]);

  dynamic chatHistory;

  bool aiResponding = false;

  String? initialPrompt = 'Start a conversation here...';

  bool chatActive = false;

  ///  State fields for stateful widgets in this page.

  // Model for background_image component.
  late BackgroundImageModel backgroundImageModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for ui_custom_dropdown component.
  late UiCustomDropdownModel uiCustomDropdownModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel1;
  // State field(s) for initital_prompt widget.
  FocusNode? inititalPromptFocusNode;
  TextEditingController? inititalPromptTextController;
  String? Function(BuildContext, String?)?
      inititalPromptTextControllerValidator;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel2;
  // Models for chat_bubbles dynamic component.
  late FlutterFlowDynamicModels<ChatBubblesModel> chatBubblesModels;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    backgroundImageModel = createModel(context, () => BackgroundImageModel());
    uiCustomDropdownModel = createModel(context, () => UiCustomDropdownModel());
    uiHeaderSubModel1 = createModel(context, () => UiHeaderSubModel());
    uiHeaderSubModel2 = createModel(context, () => UiHeaderSubModel());
    chatBubblesModels = FlutterFlowDynamicModels(() => ChatBubblesModel());
  }

  @override
  void dispose() {
    backgroundImageModel.dispose();
    uiCustomDropdownModel.dispose();
    uiHeaderSubModel1.dispose();
    inititalPromptFocusNode?.dispose();
    inititalPromptTextController?.dispose();

    uiHeaderSubModel2.dispose();
    chatBubblesModels.dispose();
    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
