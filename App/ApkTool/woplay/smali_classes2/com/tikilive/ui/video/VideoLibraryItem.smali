.class public Lcom/tikilive/ui/video/VideoLibraryItem;
.super Ljava/lang/Object;
.source "VideoLibraryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/VideoLibraryItem$ViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CATEGORY:I = 0x1

.field public static final NETWORK:I = 0x2

.field public static final VIDEO:I = 0x3


# instance fields
.field object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryItem;->object:Ljava/lang/Object;

    .line 24
    iput p2, p0, Lcom/tikilive/ui/video/VideoLibraryItem;->viewType:I

    return-void
.end method
