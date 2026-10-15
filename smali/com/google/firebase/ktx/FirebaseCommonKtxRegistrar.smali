###### Class com.google.firebase.ktx.FirebaseCommonKtxRegistrar (com.google.firebase.ktx.FirebaseCommonKtxRegistrar)
.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "Firebase.kt"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lda/i0;

    const/4 v1, 0x4

    new-array v1, v1, [Lk5/c;

    const-class v2, Lf5/a;

    .line 2
    invoke-static {v2, v0}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v2

    invoke-static {v2}, Lk5/c;->e(Lk5/f0;)Lk5/c$b;

    move-result-object v2

    const-class v3, Lf5/a;

    const-class v4, Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v3, v4}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v3

    invoke-static {v3}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;

    invoke-virtual {v2, v3}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lk5/c$b;->d()Lk5/c;

    move-result-object v2

    const-string v3, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()"

    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 6
    const-class v2, Lf5/c;

    .line 7
    invoke-static {v2, v0}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v2

    invoke-static {v2}, Lk5/c;->e(Lk5/f0;)Lk5/c$b;

    move-result-object v2

    const-class v4, Lf5/c;

    const-class v5, Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v4, v5}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v4

    invoke-static {v4}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v2

    .line 9
    sget-object v4, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;

    invoke-virtual {v2, v4}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lk5/c$b;->d()Lk5/c;

    move-result-object v2

    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 11
    const-class v2, Lf5/b;

    .line 12
    invoke-static {v2, v0}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v2

    invoke-static {v2}, Lk5/c;->e(Lk5/f0;)Lk5/c$b;

    move-result-object v2

    const-class v4, Lf5/b;

    const-class v5, Ljava/util/concurrent/Executor;

    .line 13
    invoke-static {v4, v5}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v4

    invoke-static {v4}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v2

    .line 14
    sget-object v4, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;

    invoke-virtual {v2, v4}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lk5/c$b;->d()Lk5/c;

    move-result-object v2

    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 16
    const-class v2, Lf5/d;

    .line 17
    invoke-static {v2, v0}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    invoke-static {v0}, Lk5/c;->e(Lk5/f0;)Lk5/c$b;

    move-result-object v0

    const-class v2, Lf5/d;

    const-class v4, Ljava/util/concurrent/Executor;

    .line 18
    invoke-static {v2, v4}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v2

    invoke-static {v2}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v0

    .line 19
    sget-object v2, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;

    invoke-virtual {v0, v2}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lk5/c$b;->d()Lk5/c;

    move-result-object v0

    invoke-static {v0, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 21
    invoke-static {v1}, Li9/j;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.firebase.ktx.FirebaseCommonKtxRegistrar.a (com.google.firebase.ktx.FirebaseCommonKtxRegistrar$a)
.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;
.super Ljava/lang/Object;
.source "Firebase.kt"

# interfaces
.implements Lk5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk5/h;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;

    invoke-direct {v0}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;-><init>()V

    sput-object v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;->b(Lk5/e;)Lda/i0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lk5/e;)Lda/i0;
    .registers 4

    .line 1
    const-class v0, Lf5/a;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    invoke-interface {p1, v0}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lda/p1;->a(Ljava/util/concurrent/Executor;)Lda/i0;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.ktx.FirebaseCommonKtxRegistrar.b (com.google.firebase.ktx.FirebaseCommonKtxRegistrar$b)
.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;
.super Ljava/lang/Object;
.source "Firebase.kt"

# interfaces
.implements Lk5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk5/h;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;

    invoke-direct {v0}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;-><init>()V

    sput-object v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;->b(Lk5/e;)Lda/i0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lk5/e;)Lda/i0;
    .registers 4

    .line 1
    const-class v0, Lf5/c;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    invoke-interface {p1, v0}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lda/p1;->a(Ljava/util/concurrent/Executor;)Lda/i0;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.ktx.FirebaseCommonKtxRegistrar.c (com.google.firebase.ktx.FirebaseCommonKtxRegistrar$c)
.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;
.super Ljava/lang/Object;
.source "Firebase.kt"

# interfaces
.implements Lk5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk5/h;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;

    invoke-direct {v0}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;-><init>()V

    sput-object v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;->b(Lk5/e;)Lda/i0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lk5/e;)Lda/i0;
    .registers 4

    .line 1
    const-class v0, Lf5/b;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    invoke-interface {p1, v0}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lda/p1;->a(Ljava/util/concurrent/Executor;)Lda/i0;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.ktx.FirebaseCommonKtxRegistrar.d (com.google.firebase.ktx.FirebaseCommonKtxRegistrar$d)
.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;
.super Ljava/lang/Object;
.source "Firebase.kt"

# interfaces
.implements Lk5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk5/h;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;

    invoke-direct {v0}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;-><init>()V

    sput-object v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;->b(Lk5/e;)Lda/i0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lk5/e;)Lda/i0;
    .registers 4

    .line 1
    const-class v0, Lf5/d;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    invoke-interface {p1, v0}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lda/p1;->a(Ljava/util/concurrent/Executor;)Lda/i0;

    move-result-object p1

    return-object p1
.end method
