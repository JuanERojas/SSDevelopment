.class Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$7;
.super Ljava/lang/Object;
.source "DvrLibraryActivityFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->reloadCurrentTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tikilive/ui/model/Dvr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$7;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tikilive/ui/model/Dvr;Lcom/tikilive/ui/model/Dvr;)I
    .locals 0

    .line 278
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result p1

    .line 279
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 274
    check-cast p1, Lcom/tikilive/ui/model/Dvr;

    check-cast p2, Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$7;->compare(Lcom/tikilive/ui/model/Dvr;Lcom/tikilive/ui/model/Dvr;)I

    move-result p1

    return p1
.end method
