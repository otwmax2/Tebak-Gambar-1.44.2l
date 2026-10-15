###### Class ca.b (ca.b)
.class public final Lca/b;
.super Ljava/lang/Object;
.source "DurationJvm.kt"


# static fields
.field private static final a:Z

.field private static final b:[Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-class v0, Lca/a;

    const/4 v0, 0x0

    sput-boolean v0, Lca/b;->a:Z

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/ThreadLocal;

    :goto_8
    if-ge v0, v1, :cond_14

    .line 2
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    sput-object v2, Lca/b;->b:[Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final a()Z
    .registers 1

    .line 1
    sget-boolean v0, Lca/b;->a:Z

    return v0
.end method
