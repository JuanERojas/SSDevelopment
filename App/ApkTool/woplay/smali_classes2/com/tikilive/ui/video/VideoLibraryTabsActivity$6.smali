.class Lcom/tikilive/ui/video/VideoLibraryTabsActivity$6;
.super Ljava/lang/Object;
.source "VideoLibraryTabsActivity.java"

# interfaces
.implements Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoLibraryTabsActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationSettingsRetrieved(Lcom/tikilive/ui/application/MyApplication;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Lcom/tikilive/ui/application/MyApplication;->hasPermissionUseSearch()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabSearch:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabSearch:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
