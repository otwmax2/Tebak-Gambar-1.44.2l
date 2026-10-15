###### Class kotlinx.coroutines.internal.d (kotlinx.coroutines.internal.d)
.class final Lkotlinx/coroutines/internal/d;
.super Lkotlinx/coroutines/internal/g;
.source "ExceptionsConstructor.kt"


# annotations
.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/d;

.field private static final b:Lkotlinx/coroutines/internal/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/internal/d;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/d;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/d;->a:Lkotlinx/coroutines/internal/d;

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/d$a;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/d$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/d;->b:Lkotlinx/coroutines/internal/d$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ls9/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/d;->b:Lkotlinx/coroutines/internal/d$a;

    invoke-virtual {v0, p1}, Ljava/lang/ClassValue;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls9/l;

    return-object p1
.end method

###### Class kotlinx.coroutines.internal.d.a (kotlinx.coroutines.internal.d$a)
.class public final Lkotlinx/coroutines/internal/d$a;
.super Ljava/lang/ClassValue;
.source "ExceptionsConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ClassValue<",
        "Ls9/l<",
        "-",
        "Ljava/lang/Throwable;",
        "+",
        "Ljava/lang/Throwable;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Ls9/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type java.lang.Class<out kotlin.Throwable>"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlinx/coroutines/internal/j;->a(Ljava/lang/Class;)Ls9/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/d$a;->a(Ljava/lang/Class;)Ls9/l;

    move-result-object p1

    return-object p1
.end method
