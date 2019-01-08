.class Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->populateSearchResults(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

.field final synthetic val$currentVideo:Lcom/tikilive/ui/model/Video;

.field final synthetic val$searchQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;Lcom/tikilive/ui/model/Video;Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;->val$currentVideo:Lcom/tikilive/ui/model/Video;

    iput-object p3, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;->val$searchQuery:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 266
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video_id"

    .line 267
    iget-object v1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;->val$currentVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "search_query"

    .line 268
    iget-object v1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;->val$searchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method
