###### Class xa.a (xa.a)
.class public final Lxa/a;
.super Lwa/e$a;
.source "GsonConverterFactory.java"


# instance fields
.field private final a:Lcom/google/gson/f;


# direct methods
.method private constructor <init>(Lcom/google/gson/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lwa/e$a;-><init>()V

    .line 2
    iput-object p1, p0, Lxa/a;->a:Lcom/google/gson/f;

    return-void
.end method

.method public static d()Lxa/a;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    invoke-static {v0}, Lxa/a;->e(Lcom/google/gson/f;)Lxa/a;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/google/gson/f;)Lxa/a;
    .registers 2

    const-string v0, "gson == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lxa/a;

    invoke-direct {v0, p0}, Lxa/a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lwa/m;)Lwa/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lwa/m;",
            ")",
            "Lwa/e<",
            "*",
            "Lja/b0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lxa/a;->a:Lcom/google/gson/f;

    invoke-static {p1}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object p1

    .line 2
    new-instance p2, Lxa/b;

    iget-object p3, p0, Lxa/a;->a:Lcom/google/gson/f;

    invoke-direct {p2, p3, p1}, Lxa/b;-><init>(Lcom/google/gson/f;Lcom/google/gson/w;)V

    return-object p2
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lwa/m;)Lwa/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lwa/m;",
            ")",
            "Lwa/e<",
            "Lja/d0;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lxa/a;->a:Lcom/google/gson/f;

    invoke-static {p1}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object p1

    .line 2
    new-instance p2, Lxa/c;

    iget-object p3, p0, Lxa/a;->a:Lcom/google/gson/f;

    invoke-direct {p2, p3, p1}, Lxa/c;-><init>(Lcom/google/gson/f;Lcom/google/gson/w;)V

    return-object p2
.end method
