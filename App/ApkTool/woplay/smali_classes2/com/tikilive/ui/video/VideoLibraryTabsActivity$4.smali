.class Lcom/tikilive/ui/video/VideoLibraryTabsActivity$4;
.super Ljava/lang/Object;
.source "VideoLibraryTabsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 79
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 82
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;

    const v1, 0x7f120229

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    .line 83
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;

    const-class v1, Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoLibraryTabsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->overridePendingTransition(II)V

    return-void
.end method
