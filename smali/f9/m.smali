###### Class f9.m (f9.m)
.class public Lf9/m;
.super Ljava/lang/Object;
.source "SafeMapAdapter.java"

# interfaces
.implements Lcom/google/gson/x;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lg7/a<",
            "TT;>;)",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0, p2}, Lcom/google/gson/f;->o(Lcom/google/gson/x;Lg7/a;)Lcom/google/gson/w;

    move-result-object p1

    .line 2
    new-instance v0, Lf9/m$a;

    invoke-direct {v0, p0, p1, p2}, Lf9/m$a;-><init>(Lf9/m;Lcom/google/gson/w;Lg7/a;)V

    return-object v0
.end method

###### Class f9.m.a (f9.m$a)
.class Lf9/m$a;
.super Lcom/google/gson/w;
.source "SafeMapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf9/m;->a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/w;

.field final synthetic b:Lg7/a;

.field final synthetic c:Lf9/m;


# direct methods
.method constructor <init>(Lf9/m;Lcom/google/gson/w;Lg7/a;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lf9/m$a;->c:Lf9/m;

    iput-object p2, p0, Lf9/m$a;->a:Lcom/google/gson/w;

    iput-object p3, p0, Lf9/m$a;->b:Lg7/a;

    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh7/a;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf9/m$a;->a:Lcom/google/gson/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lf9/m$a;->b:Lg7/a;

    invoke-virtual {v1}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez p1, :cond_19

    .line 3
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    .line 4
    :cond_19
    check-cast p1, Ljava/util/Map;

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :cond_1f
    return-object p1
.end method

.method public d(Lh7/c;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf9/m$a;->a:Lcom/google/gson/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    return-void
.end method
