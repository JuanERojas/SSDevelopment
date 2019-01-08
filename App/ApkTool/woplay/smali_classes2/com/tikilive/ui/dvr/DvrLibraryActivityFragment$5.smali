.class Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;
.super Ljava/lang/Object;
.source "DvrLibraryActivityFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 150
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 154
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$200(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$202(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;I)I

    .line 156
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$100(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 159
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-static {p2}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$200(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 160
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-static {p2, p1}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$202(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;I)I

    .line 161
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$100(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
