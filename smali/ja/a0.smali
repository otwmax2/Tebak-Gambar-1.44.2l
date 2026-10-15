###### Class ja.a0 (ja.a0)
.class public final Lja/a0;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/a0$a;
    }
.end annotation


# instance fields
.field final a:Lja/t;

.field final b:Ljava/lang/String;

.field final c:Lja/s;

.field final d:Lja/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Lja/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lja/a0$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lja/a0$a;->a:Lja/t;

    iput-object v0, p0, Lja/a0;->a:Lja/t;

    .line 3
    iget-object v0, p1, Lja/a0$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lja/a0;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lja/a0$a;->c:Lja/s$a;

    invoke-virtual {v0}, Lja/s$a;->d()Lja/s;

    move-result-object v0

    iput-object v0, p0, Lja/a0;->c:Lja/s;

    .line 5
    iget-object v0, p1, Lja/a0$a;->d:Lja/b0;

    iput-object v0, p0, Lja/a0;->d:Lja/b0;

    .line 6
    iget-object p1, p1, Lja/a0$a;->e:Ljava/util/Map;

    invoke-static {p1}, Lka/c;->v(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lja/a0;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lja/b0;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/a0;->d:Lja/b0;

    return-object v0
.end method

.method public b()Lja/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/a0;->f:Lja/d;

    if-eqz v0, :cond_5

    goto :goto_d

    .line 2
    :cond_5
    iget-object v0, p0, Lja/a0;->c:Lja/s;

    invoke-static {v0}, Lja/d;->k(Lja/s;)Lja/d;

    move-result-object v0

    iput-object v0, p0, Lja/a0;->f:Lja/d;

    :goto_d
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/a0;->c:Lja/s;

    invoke-virtual {v0, p1}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Lja/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/a0;->c:Lja/s;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lja/a0;->a:Lja/t;

    invoke-virtual {v0}, Lja/t;->n()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/a0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lja/a0$a;
    .registers 2

    .line 1
    new-instance v0, Lja/a0$a;

    invoke-direct {v0, p0}, Lja/a0$a;-><init>(Lja/a0;)V

    return-object v0
.end method

.method public h()Lja/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/a0;->a:Lja/t;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lja/a0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lja/a0;->a:Lja/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lja/a0;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ja.a0.a (ja.a0$a)
.class public Lja/a0$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lja/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Lja/s$a;

.field d:Lja/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lja/a0$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lja/a0$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lja/s$a;

    invoke-direct {v0}, Lja/s$a;-><init>()V

    iput-object v0, p0, Lja/a0$a;->c:Lja/s$a;

    return-void
.end method

.method constructor <init>(Lja/a0;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lja/a0$a;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Lja/a0;->a:Lja/t;

    iput-object v0, p0, Lja/a0$a;->a:Lja/t;

    .line 8
    iget-object v0, p1, Lja/a0;->b:Ljava/lang/String;

    iput-object v0, p0, Lja/a0$a;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lja/a0;->d:Lja/b0;

    iput-object v0, p0, Lja/a0$a;->d:Lja/b0;

    .line 10
    iget-object v0, p1, Lja/a0;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_29

    .line 12
    :cond_22
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lja/a0;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_29
    iput-object v0, p0, Lja/a0$a;->e:Ljava/util/Map;

    .line 13
    iget-object p1, p1, Lja/a0;->c:Lja/s;

    invoke-virtual {p1}, Lja/s;->f()Lja/s$a;

    move-result-object p1

    iput-object p1, p0, Lja/a0$a;->c:Lja/s$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;
    .registers 4

    .line 1
    iget-object v0, p0, Lja/a0$a;->c:Lja/s$a;

    invoke-virtual {v0, p1, p2}, Lja/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/s$a;

    return-object p0
.end method

.method public b()Lja/a0;
    .registers 3

    .line 1
    iget-object v0, p0, Lja/a0$a;->a:Lja/t;

    if-eqz v0, :cond_a

    .line 2
    new-instance v0, Lja/a0;

    invoke-direct {v0, p0}, Lja/a0;-><init>(Lja/a0$a;)V

    return-object v0

    .line 3
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lja/a0$a;
    .registers 3

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lja/a0$a;->f(Ljava/lang/String;Lja/b0;)Lja/a0$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;
    .registers 4

    .line 1
    iget-object v0, p0, Lja/a0$a;->c:Lja/s$a;

    invoke-virtual {v0, p1, p2}, Lja/s$a;->f(Ljava/lang/String;Ljava/lang/String;)Lja/s$a;

    return-object p0
.end method

.method public e(Lja/s;)Lja/a0$a;
    .registers 2

    .line 1
    invoke-virtual {p1}, Lja/s;->f()Lja/s$a;

    move-result-object p1

    iput-object p1, p0, Lja/a0$a;->c:Lja/s$a;

    return-object p0
.end method

.method public f(Ljava/lang/String;Lja/b0;)Lja/a0$a;
    .registers 5
    .param p2    # Lja/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "method == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "method "

    if-eqz p2, :cond_30

    .line 3
    invoke-static {p1}, Lna/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_30

    .line 4
    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_30
    :goto_30
    if-nez p2, :cond_53

    .line 5
    invoke-static {p1}, Lna/f;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_53

    .line 6
    :cond_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_53
    :goto_53
    iput-object p1, p0, Lja/a0$a;->b:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lja/a0$a;->d:Lja/b0;

    return-object p0

    .line 9
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lja/b0;)Lja/a0$a;
    .registers 3

    const-string v0, "POST"

    .line 1
    invoke-virtual {p0, v0, p1}, Lja/a0$a;->f(Ljava/lang/String;Lja/b0;)Lja/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Lja/a0$a;
    .registers 3

    .line 1
    iget-object v0, p0, Lja/a0$a;->c:Lja/s$a;

    invoke-virtual {v0, p1}, Lja/s$a;->e(Ljava/lang/String;)Lja/s$a;

    return-object p0
.end method

.method public i(Lja/t;)Lja/a0$a;
    .registers 3

    const-string v0, "url == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lja/a0$a;->a:Lja/t;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lja/a0$a;
    .registers 9

    const-string v0, "url == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v4, "ws:"

    move-object v1, p1

    .line 2
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    :cond_29
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_4c
    :goto_4c
    invoke-static {p1}, Lja/t;->l(Ljava/lang/String;)Lja/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/a0$a;->i(Lja/t;)Lja/a0$a;

    move-result-object p1

    return-object p1
.end method
