###### Class m3.h (m3.h)
.class public abstract Lm3/h;
.super Ljava/lang/Object;
.source "CreationContext.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lv3/a;Lv3/a;Ljava/lang/String;)Lm3/h;
    .registers 5

    .line 1
    new-instance v0, Lm3/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lm3/c;-><init>(Landroid/content/Context;Lv3/a;Lv3/a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Landroid/content/Context;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lv3/a;
.end method

.method public abstract e()Lv3/a;
.end method
