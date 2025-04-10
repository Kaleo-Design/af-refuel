import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum CurrentMood {
  one,
  two,
  three,
  four,
  five,
  six,
}

enum JournalType {
  text,
  audio,
  ai,
  image,
}

enum ChatMessageTypes {
  ai,
  user,
  system,
  admin,
}

enum ContentFeedback {
  not_for_me,
  liked_it,
  loved_it,
  suggest_more,
  suggest_less,
  Neutral,
}

enum ContentType {
  Recommended,
  Spiritual,
  Deployment,
  Workouts,
  Activities,
  Quizzes,
  Tasks,
  Events,
  Mental,
}

enum HeaderOptions {
  Welcome,
  Search,
  Title,
}

enum QuestionTypes {
  short_text,
  long_text,
  single_selection,
  mult_selection,
  likert_scale,
}

enum AssessmentItemType {
  free,
  scale,
  fixed,
  introduction,
  unknown,
}

enum RankType {
  Enlisted,
  CO,
}

enum ChatResponseType {
  recommendation,
  task,
  activity,
  ai,
}

enum PFTTypes {
  Situps,
  Pushups,
  Running,
}

enum AssessmentResponseActionType {
  next,
  jump_to,
  complete,
  results,
}

enum JmlRenderType {
  h1,
  h2,
  p,
  img,
  button,
}

enum TimeInterval {
  Day,
  Week,
  Month,
  Quarter,
  Year,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (CurrentMood):
      return CurrentMood.values.deserialize(value) as T?;
    case (JournalType):
      return JournalType.values.deserialize(value) as T?;
    case (ChatMessageTypes):
      return ChatMessageTypes.values.deserialize(value) as T?;
    case (ContentFeedback):
      return ContentFeedback.values.deserialize(value) as T?;
    case (ContentType):
      return ContentType.values.deserialize(value) as T?;
    case (HeaderOptions):
      return HeaderOptions.values.deserialize(value) as T?;
    case (QuestionTypes):
      return QuestionTypes.values.deserialize(value) as T?;
    case (AssessmentItemType):
      return AssessmentItemType.values.deserialize(value) as T?;
    case (RankType):
      return RankType.values.deserialize(value) as T?;
    case (ChatResponseType):
      return ChatResponseType.values.deserialize(value) as T?;
    case (PFTTypes):
      return PFTTypes.values.deserialize(value) as T?;
    case (AssessmentResponseActionType):
      return AssessmentResponseActionType.values.deserialize(value) as T?;
    case (JmlRenderType):
      return JmlRenderType.values.deserialize(value) as T?;
    case (TimeInterval):
      return TimeInterval.values.deserialize(value) as T?;
    default:
      return null;
  }
}
