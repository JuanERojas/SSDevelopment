.class Lcom/tikilive/ui/dvr/DvrLibraryActivity$3;
.super Ljava/lang/Object;
.source "DvrLibraryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrLibraryActivity;->renderContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrLibraryActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    const-class v1, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "INITIAL_FRAGMENT"

    const/16 v1, 0x102

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
