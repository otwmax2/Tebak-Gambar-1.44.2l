###### Class i1.i (i1.i)
.class public abstract Li1/i;
.super Ljava/lang/Object;
.source "InputMergerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Li1/i;
    .registers 1

    .line 1
    new-instance v0, Li1/i$a;

    invoke-direct {v0}, Li1/i$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Li1/h;
.end method

.method public final b(Ljava/lang/String;)Li1/h;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Li1/i;->a(Ljava/lang/String;)Li1/h;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2
    invoke-static {p1}, Li1/h;->a(Ljava/lang/String;)Li1/h;

    move-result-object v0

    :cond_a
    return-object v0
.end method

###### Class i1.i.a (i1.i$a)
.class Li1/i$a;
.super Li1/i;
.source "InputMergerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/i;->c()Li1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Li1/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li1/h;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
