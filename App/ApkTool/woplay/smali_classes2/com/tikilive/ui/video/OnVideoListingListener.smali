.class public interface abstract Lcom/tikilive/ui/video/OnVideoListingListener;
.super Ljava/lang/Object;
.source "OnVideoListingListener.java"


# virtual methods
.method public abstract getCategories()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPopularVideos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotalVideos()I
.end method

.method public abstract getVideos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadVideos(IILcom/tikilive/ui/video/OnLoadedVideosListener;)V
.end method
