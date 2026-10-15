###### Class h0.o (h0.o)
.class final Lh0/o;
.super Lh0/n;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh0/n<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lh0/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh0/o;

    invoke-direct {v0}, Lh0/o;-><init>()V

    sput-object v0, Lh0/o;->a:Lh0/o;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lh0/n;-><init>(Lt9/g;)V

    return-void
.end method
