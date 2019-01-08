.class public abstract Lcom/github/snowdream/android/util/LogFormatter;
.super Ljava/lang/Object;
.source "LogFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/snowdream/android/util/LogFormatter$IDEAFormatter;,
        Lcom/github/snowdream/android/util/LogFormatter$EclipseFormatter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract format(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
.end method
