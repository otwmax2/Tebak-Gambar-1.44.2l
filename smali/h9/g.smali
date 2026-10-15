###### Class h9.g (h9.g)
.class final Lh9/g;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"


# static fields
.field public static final a:Lh9/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh9/g;

    invoke-direct {v0}, Lh9/g;-><init>()V

    sput-object v0, Lh9/g;->a:Lh9/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lh9/f;
    .registers 4

    .line 1
    new-instance v0, Lh9/f;

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lh9/f;-><init>(III)V

    return-object v0
.end method
