.class Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$1;
.super Ljava/lang/Object;
.source "DvrLibraryActivityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    invoke-static {p1, v0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$002(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;Lcom/tikilive/ui/model/DvrStatus;)Lcom/tikilive/ui/model/DvrStatus;

    .line 115
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$100(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    return-void
.end method
