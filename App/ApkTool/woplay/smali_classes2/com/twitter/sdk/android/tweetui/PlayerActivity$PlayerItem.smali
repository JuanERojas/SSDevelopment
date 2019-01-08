.class public Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerItem"
.end annotation


# instance fields
.field public callToActionText:Ljava/lang/String;

.field public callToActionUrl:Ljava/lang/String;

.field public looping:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->url:Ljava/lang/String;

    .line 83
    iput-boolean p2, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->looping:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->url:Ljava/lang/String;

    .line 89
    iput-boolean p2, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->looping:Z

    .line 90
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionText:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionUrl:Ljava/lang/String;

    return-void
.end method
