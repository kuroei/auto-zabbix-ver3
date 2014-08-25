#
# Author:: Sean OMeara (<someara@getchef.com>)
# Recipe:: yum-epel::default
#
# Copyright 2013, Chef
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

node['yum-epel']['repositories'].each do |repo|

  if node['yum'][repo]['managed']
    yum_repository repo do
      description node['yum'][repo]['description']
      mirrorlist node['yum'][repo]['mirrorlist']
      enabled node['yum'][repo]['enabled']
      exclude node['yum'][repo]['exclude']
      failovermethod node['yum'][repo]['failovermethod']
      includepkgs node['yum'][repo]['includepkgs']
      metadata_expire node['yum'][repo]['metadata_expire']
      priority node['yum'][repo]['priority']
      repositoryid node['yum'][repo]['repositoryid']
      sslcacert node['yum'][repo]['sslcacert']
      sslclientcert node['yum'][repo]['sslclientcert']
      sslclientkey node['yum'][repo]['sslclientkey']
      sslverify node['yum'][repo]['sslverify']
      timeout node['yum'][repo]['timeout']
      action :create
    end
  end
end
