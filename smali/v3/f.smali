###### Class v3.f (v3.f)
.class public Lv3/f;
.super Ljava/lang/Object;
.source "WallTimeClock.java"

# interfaces
.implements Lv3/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
