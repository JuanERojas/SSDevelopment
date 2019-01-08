.class public Lcom/tikilive/ui/upgrade/PackageDetailsItem;
.super Ljava/lang/Object;
.source "PackageDetailsItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/upgrade/PackageDetailsItem$ViewType;
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
.field public static final BLANK:I = 0x2

.field public static final CHANNEL:I = 0x1


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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsItem;->object:Ljava/lang/Object;

    .line 23
    iput p2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsItem;->viewType:I

    return-void
.end method
