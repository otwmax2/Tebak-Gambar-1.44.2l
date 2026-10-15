###### Class p6.b (p6.b)
.class public Lp6/b;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lp6/a;


# static fields
.field private static a:Lp6/b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lp6/b;
    .registers 1

    .line 1
    sget-object v0, Lp6/b;->a:Lp6/b;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lp6/b;

    invoke-direct {v0}, Lp6/b;-><init>()V

    sput-object v0, Lp6/b;->a:Lp6/b;

    .line 3
    :cond_b
    sget-object v0, Lp6/b;->a:Lp6/b;

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
