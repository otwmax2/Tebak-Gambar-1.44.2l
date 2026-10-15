###### Class w9.b (w9.b)
.class public final Lw9/b;
.super Lw9/a;
.source "PlatformRandom.kt"


# instance fields
.field private final q:Lw9/b$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lw9/a;-><init>()V

    .line 2
    new-instance v0, Lw9/b$a;

    invoke-direct {v0}, Lw9/b$a;-><init>()V

    iput-object v0, p0, Lw9/b;->q:Lw9/b$a;

    return-void
.end method


# virtual methods
.method public f()Ljava/util/Random;
    .registers 3

    .line 1
    iget-object v0, p0, Lw9/b;->q:Lw9/b$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method

###### Class w9.b.a (w9.b$a)
.class public final Lw9/b$a;
.super Ljava/lang/ThreadLocal;
.source "PlatformRandom.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Random;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Random;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lw9/b$a;->a()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method
