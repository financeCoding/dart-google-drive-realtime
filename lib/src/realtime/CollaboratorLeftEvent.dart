// Copyright (c) 2013, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_drive_realtime;

class CollaboratorLeftEvent extends jsw.TypedProxy {
  static CollaboratorLeftEvent cast(js.Proxy proxy) => proxy == null ? null : new CollaboratorLeftEvent.fromProxy(proxy);

  CollaboratorLeftEvent(Document document, Collaborator collaborator) : this.fromProxy(new js.Proxy.withArgList(realtime.CollaboratorLeftEvent, [document, collaborator]));
  CollaboratorLeftEvent.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  Collaborator get collaborator => Collaborator.cast($unsafe.collaborator);

  set collaborator(Collaborator collaborator) => $unsafe.collaborator = collaborator;

  CollaboratorLeftEvent deserialize(Document source, dynamic serialized) => CollaboratorLeftEvent.cast($unsafe.deserialize(source, serialized));
}