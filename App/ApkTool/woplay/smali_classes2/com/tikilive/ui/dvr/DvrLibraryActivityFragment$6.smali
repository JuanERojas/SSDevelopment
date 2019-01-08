.class Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$6;
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

    .line 264
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$6;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tikilive/ui/model/Dvr;Lcom/tikilive/ui/model/Dvr;)I
    .locals 0

    .line 267
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object p2

    .line 270
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 264
    check-cast p1, Lcom/tikilive/ui/model/Dvr;

    check-cast p2, Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$6;->compare(Lcom/tikilive/ui/model/Dvr;Lcom/tikilive/ui/model/Dvr;)I

    move-result p1

    return p1
.end method
