#
# OsmBase
#

FROM centos:7
MAINTAINER "Dirk Stichling" <mytracks@mytracks4mac.com>

# Change root password
RUN echo "root:admin" | chpasswd

# Create user gis
RUN adduser gis
RUN echo "gis:gis" | chpasswd

RUN yum -y install git make gcc-c++ autoconf automake libtool zlib-devel bzip2-devel unzip bzip2 psmisc boost-devel && yum clean all
