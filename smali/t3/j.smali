###### Class t3.j (t3.j)
.class public final Lt3/j;
.super Ljava/lang/Object;
.source "EventStoreModule_StoreConfigFactory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b<",
        "Lt3/e;",
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

.method public static a()Lt3/j;
    .registers 1

    .line 1
    invoke-static {}, Lt3/j$a;->a()Lt3/j;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lt3/e;
    .registers 2

    .line 1
    invoke-static {}, Lt3/f;->d()Lt3/e;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ln3/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/e;

    return-object v0
.end method


# virtual methods
.method public b()Lt3/e;
    .registers 2

    .line 1
    invoke-static {}, Lt3/j;->c()Lt3/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt3/j;->b()Lt3/e;

    move-result-object v0

    return-object v0
.end method

###### Class t3.j.a (t3.j$a)
.class final Lt3/j$a;
.super Ljava/lang/Object;
.source "EventStoreModule_StoreConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lt3/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lt3/j;

    invoke-direct {v0}, Lt3/j;-><init>()V

    sput-object v0, Lt3/j$a;->a:Lt3/j;

    return-void
.end method

.method static synthetic a()Lt3/j;
    .registers 1

    .line 1
    sget-object v0, Lt3/j$a;->a:Lt3/j;

    return-object v0
.end method
