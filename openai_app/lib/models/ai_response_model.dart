
class AiResponseModel {
  AiResponseModel({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
    required this.serviceTier,
    required this.systemFingerprint,
  });
  late final String id;
  late final String object;
  late final int created;
  late final String model;
  late final List<Choices> choices;
  late final Usage usage;
  late final String serviceTier;
  late final String systemFingerprint;
  
  AiResponseModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    object = json['object'];
    created = json['created'];
    model = json['model'];
    choices = List.from(json['choices']).map((e)=>Choices.fromJson(e)).toList();
    usage = Usage.fromJson(json['usage']);
    serviceTier = json['service_tier'];
    systemFingerprint = json['system_fingerprint'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['object'] = object;
    _data['created'] = created;
    _data['model'] = model;
    _data['choices'] = choices.map((e)=>e.toJson()).toList();
    _data['usage'] = usage.toJson();
    _data['service_tier'] = serviceTier;
    _data['system_fingerprint'] = systemFingerprint;
    return _data;
  }
}

class Choices {
  Choices({
    required this.index,
    required this.message,
     this.logprobs,
    required this.finishReason,
  });
  late final int index;
  late final Message message;
  late final Null logprobs;
  late final String finishReason;
  
  Choices.fromJson(Map<String, dynamic> json){
    index = json['index'];
    message = Message.fromJson(json['message']);
    logprobs = null;
    finishReason = json['finish_reason'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['index'] = index;
    _data['message'] = message.toJson();
    _data['logprobs'] = logprobs;
    _data['finish_reason'] = finishReason;
    return _data;
  }
}

class Message {
  Message({
    required this.role,
    required this.content,
     this.refusal,
    required this.annotations,
  });
  late final String role;
  late final String content;
  late final Null refusal;
  late final List<dynamic> annotations;
  
  Message.fromJson(Map<String, dynamic> json){
    role = json['role'];
    content = json['content'];
    refusal = null;
    annotations = List.castFrom<dynamic, dynamic>(json['annotations']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['role'] = role;
    _data['content'] = content;
    _data['refusal'] = refusal;
    _data['annotations'] = annotations;
    return _data;
  }
}

class Usage {
  Usage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
    required this.promptTokensDetails,
    required this.completionTokensDetails,
  });
  late final int promptTokens;
  late final int completionTokens;
  late final int totalTokens;
  late final PromptTokensDetails promptTokensDetails;
  late final CompletionTokensDetails completionTokensDetails;
  
  Usage.fromJson(Map<String, dynamic> json){
    promptTokens = json['prompt_tokens'];
    completionTokens = json['completion_tokens'];
    totalTokens = json['total_tokens'];
    promptTokensDetails = PromptTokensDetails.fromJson(json['prompt_tokens_details']);
    completionTokensDetails = CompletionTokensDetails.fromJson(json['completion_tokens_details']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['prompt_tokens'] = promptTokens;
    _data['completion_tokens'] = completionTokens;
    _data['total_tokens'] = totalTokens;
    _data['prompt_tokens_details'] = promptTokensDetails.toJson();
    _data['completion_tokens_details'] = completionTokensDetails.toJson();
    return _data;
  }
}

class PromptTokensDetails {
  PromptTokensDetails({
    required this.cachedTokens,
    required this.audioTokens,
  });
  late final int cachedTokens;
  late final int audioTokens;
  
  PromptTokensDetails.fromJson(Map<String, dynamic> json){
    cachedTokens = json['cached_tokens'];
    audioTokens = json['audio_tokens'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['cached_tokens'] = cachedTokens;
    _data['audio_tokens'] = audioTokens;
    return _data;
  }
}

class CompletionTokensDetails {
  CompletionTokensDetails({
    required this.reasoningTokens,
    required this.audioTokens,
    required this.acceptedPredictionTokens,
    required this.rejectedPredictionTokens,
  });
  late final int reasoningTokens;
  late final int audioTokens;
  late final int acceptedPredictionTokens;
  late final int rejectedPredictionTokens;
  
  CompletionTokensDetails.fromJson(Map<String, dynamic> json){
    reasoningTokens = json['reasoning_tokens'];
    audioTokens = json['audio_tokens'];
    acceptedPredictionTokens = json['accepted_prediction_tokens'];
    rejectedPredictionTokens = json['rejected_prediction_tokens'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['reasoning_tokens'] = reasoningTokens;
    _data['audio_tokens'] = audioTokens;
    _data['accepted_prediction_tokens'] = acceptedPredictionTokens;
    _data['rejected_prediction_tokens'] = rejectedPredictionTokens;
    return _data;
  }
}
























// class AiResponseModel {
//   final String id;
//   final String object;
//   final int created;
//   final String model;
//   final String serviceTier;
//   final String systemFingerprint;
  
// AiResponseModel({required this.id,required this.object,required this.created,required this.model,required this.serviceTier,required this.systemFingerprint,});


// }

//
//
//
//
//
//
//
//


// class ChoicesModel {
//   final String index;
//   final String object;
//   final int created;
//   final String model;
//   final String serviceTier;
//   final String systemFingerprint;
  
// AiResponseModel({required this.id,required this.object,required this.created,required this.model,required this.serviceTier,required this.systemFingerprint,});


// }







// class


// {
//     "id": "chatcmpl-BZZaTTCywncZV6LXNXBsAFqDX8Vrx",
//     "object": "chat.completion",
//     "created": 1747817977,
//     "model": "gpt-4o-mini-2024-07-18",
//     "choices": [
//         {
//             "index": 0,
//             "message": {
//                 "role": "assistant",
//                 "content": "لا توجد إحصائيات دقيقة ومحدثة باستمرار عن عدد مبرمجي فلاتر في العالم، ولكن يمكن الإشارة إلى أن Flutter، وهو إطار عمل للتطوير تم تطويره بواسطة جوجل، قد شهد نموًا كبيرًا في شعبيته منذ إطلاقه.\n\nوفقًا لبعض الدراسات والتقارير السابقة، يُقدّر عدد مطوري فلاتر بمئات الآلاف حول العالم، ومع تزايد الطلب على التطبيقات المُطورة باستخدام فلاتر، من المتوقع أن يرتفع هذا العدد أكثر.\n\nإذا كنت مهتمًا بإحصائيات معينة أو الاتجاهات في هذا المجال، يمكنك الاطلاع على تقارير مثل \"Stack Overflow Developer Survey\" التي تعطي لمحة عن عدد المطورين حسب التقنيات التي يستخدمونها، أو منصات مثل GitHub وLinkedIn للحصول على بيانات أوسع حول المطورين.",
//                 "refusal": null,
//                 "annotations": []
//             },
//             "logprobs": null,
//             "finish_reason": "stop"
//         }
//     ],
//     "usage": {
//         "prompt_tokens": 24,
//         "completion_tokens": 173,
//         "total_tokens": 197,
//         "prompt_tokens_details": {
//             "cached_tokens": 0,
//             "audio_tokens": 0
//         },
//         "completion_tokens_details": {
//             "reasoning_tokens": 0,
//             "audio_tokens": 0,
//             "accepted_prediction_tokens": 0,
//             "rejected_prediction_tokens": 0
//         }
//     },
//     "service_tier": "default",
//     "system_fingerprint": "fp_54eb4bd693"
// }