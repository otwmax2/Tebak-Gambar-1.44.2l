###### Class k9.e (k9.e)
.class public interface abstract Lk9/e;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lk9/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk9/e$b;,
        Lk9/e$a;
    }
.end annotation


# static fields
.field public static final n:Lk9/e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lk9/e$b;->o:Lk9/e$b;

    sput-object v0, Lk9/e;->n:Lk9/e$b;

    return-void
.end method


# virtual methods
.method public abstract h(Lk9/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract p(Lk9/d;)Lk9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk9/d<",
            "-TT;>;)",
            "Lk9/d<",
            "TT;>;"
        }
    .end annotation
.end method

###### Class k9.e.a (k9.e$a)
.class public final Lk9/e$a;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lk9/e;Lk9/g$c;)Lk9/g$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lk9/e;",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lk9/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 2
    check-cast p1, Lk9/b;

    invoke-interface {p0}, Lk9/g$b;->getKey()Lk9/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk9/b;->a(Lk9/g$c;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1, p0}, Lk9/b;->b(Lk9/g$b;)Lk9/g$b;

    move-result-object p0

    instance-of p1, p0, Lk9/g$b;

    if-eqz p1, :cond_1f

    move-object v1, p0

    :cond_1f
    return-object v1

    .line 3
    :cond_20
    sget-object v0, Lk9/e;->n:Lk9/e$b;

    if-ne v0, p1, :cond_2a

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lt9/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    move-object p0, v1

    :goto_2b
    return-object p0
.end method

.method public static b(Lk9/e;Lk9/g$c;)Lk9/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/e;",
            "Lk9/g$c<",
            "*>;)",
            "Lk9/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lk9/b;

    if-eqz v0, :cond_1e

    .line 2
    check-cast p1, Lk9/b;

    invoke-interface {p0}, Lk9/g$b;->getKey()Lk9/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk9/b;->a(Lk9/g$c;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1, p0}, Lk9/b;->b(Lk9/g$b;)Lk9/g$b;

    move-result-object p1

    if-eqz p1, :cond_1d

    sget-object p0, Lk9/h;->o:Lk9/h;

    :cond_1d
    return-object p0

    .line 3
    :cond_1e
    sget-object v0, Lk9/e;->n:Lk9/e$b;

    if-ne v0, p1, :cond_24

    sget-object p0, Lk9/h;->o:Lk9/h;

    :cond_24
    return-object p0
.end method

###### Class k9.e.b (k9.e$b)
.class public final Lk9/e$b;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lk9/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/g$c<",
        "Lk9/e;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic o:Lk9/e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk9/e$b;

    invoke-direct {v0}, Lk9/e$b;-><init>()V

    sput-object v0, Lk9/e$b;->o:Lk9/e$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
