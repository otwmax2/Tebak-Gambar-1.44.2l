###### Class x6.l0 (x6.l0)
.class public final Lx6/l0;
.super Ljava/lang/Object;
.source "TimeProvider.kt"

# interfaces
.implements Lx6/k0;


# static fields
.field public static final a:Lx6/l0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/l0;

    invoke-direct {v0}, Lx6/l0;-><init>()V

    sput-object v0, Lx6/l0;->a:Lx6/l0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method
