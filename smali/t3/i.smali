###### Class t3.i (t3.i)
.class public final Lt3/i;
.super Ljava/lang/Object;
.source "EventStoreModule_SchemaVersionFactory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lt3/i;
    .registers 1

    .line 1
    invoke-static {}, Lt3/i$a;->a()Lt3/i;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .registers 1

    .line 1
    invoke-static {}, Lt3/f;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/Integer;
    .registers 2

    .line 1
    invoke-static {}, Lt3/i;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt3/i;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class t3.i.a (t3.i$a)
.class final Lt3/i$a;
.super Ljava/lang/Object;
.source "EventStoreModule_SchemaVersionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lt3/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lt3/i;

    invoke-direct {v0}, Lt3/i;-><init>()V

    sput-object v0, Lt3/i$a;->a:Lt3/i;

    return-void
.end method

.method static synthetic a()Lt3/i;
    .registers 1

    .line 1
    sget-object v0, Lt3/i$a;->a:Lt3/i;

    return-object v0
.end method
