###### Class wa.f (wa.f)
.class final Lwa/f;
.super Lwa/c$a;
.source "DefaultCallAdapterFactory.java"


# static fields
.field static final a:Lwa/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lwa/f;

    invoke-direct {v0}, Lwa/f;-><init>()V

    sput-object v0, Lwa/f;->a:Lwa/c$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lwa/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lwa/m;)Lwa/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lwa/m;",
            ")",
            "Lwa/c<",
            "**>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lwa/c$a;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lwa/b;

    if-eq p2, p3, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_a
    invoke-static {p1}, Lwa/o;->f(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 3
    new-instance p2, Lwa/f$a;

    invoke-direct {p2, p0, p1}, Lwa/f$a;-><init>(Lwa/f;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

###### Class wa.f.a (wa.f$a)
.class Lwa/f$a;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lwa/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/f;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lwa/m;)Lwa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/c<",
        "Ljava/lang/Object;",
        "Lwa/b<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Lwa/f;


# direct methods
.method constructor <init>(Lwa/f;Ljava/lang/reflect/Type;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lwa/f$a;->b:Lwa/f;

    iput-object p2, p0, Lwa/f$a;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/f$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic b(Lwa/b;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lwa/f$a;->c(Lwa/b;)Lwa/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Lwa/b;)Lwa/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Ljava/lang/Object;",
            ">;)",
            "Lwa/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
