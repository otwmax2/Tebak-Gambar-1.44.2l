###### Class ja.x (ja.x)
.class public Lja/x;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lja/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/x$b;
    }
.end annotation


# static fields
.field static final P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/y;",
            ">;"
        }
    .end annotation
.end field

.field static final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:Lsa/c;

.field final B:Ljavax/net/ssl/HostnameVerifier;

.field final C:Lja/g;

.field final D:Lja/b;

.field final E:Lja/b;

.field final F:Lja/j;

.field final G:Lja/o;

.field final H:Z

.field final I:Z

.field final J:Z

.field final K:I

.field final L:I

.field final M:I

.field final N:I

.field final O:I

.field final o:Lja/n;

.field final p:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/y;",
            ">;"
        }
    .end annotation
.end field

.field final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/k;",
            ">;"
        }
    .end annotation
.end field

.field final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/u;",
            ">;"
        }
    .end annotation
.end field

.field final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/u;",
            ">;"
        }
    .end annotation
.end field

.field final u:Lja/p$c;

.field final v:Ljava/net/ProxySelector;

.field final w:Lja/m;

.field final x:Lla/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final y:Ljavax/net/SocketFactory;

.field final z:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Lja/y;

    .line 1
    sget-object v2, Lja/y;->s:Lja/y;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lja/y;->q:Lja/y;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lka/c;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lja/x;->P:Ljava/util/List;

    new-array v0, v0, [Lja/k;

    .line 2
    sget-object v1, Lja/k;->h:Lja/k;

    aput-object v1, v0, v3

    sget-object v1, Lja/k;->j:Lja/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Lka/c;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lja/x;->Q:Ljava/util/List;

    .line 3
    new-instance v0, Lja/x$a;

    invoke-direct {v0}, Lja/x$a;-><init>()V

    sput-object v0, Lka/a;->a:Lka/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lja/x$b;

    invoke-direct {v0}, Lja/x$b;-><init>()V

    invoke-direct {p0, v0}, Lja/x;-><init>(Lja/x$b;)V

    return-void
.end method

.method constructor <init>(Lja/x$b;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lja/x$b;->a:Lja/n;

    iput-object v0, p0, Lja/x;->o:Lja/n;

    .line 4
    iget-object v0, p1, Lja/x$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lja/x;->p:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Lja/x$b;->c:Ljava/util/List;

    iput-object v0, p0, Lja/x;->q:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lja/x$b;->d:Ljava/util/List;

    iput-object v0, p0, Lja/x;->r:Ljava/util/List;

    .line 7
    iget-object v1, p1, Lja/x$b;->e:Ljava/util/List;

    invoke-static {v1}, Lka/c;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lja/x;->s:Ljava/util/List;

    .line 8
    iget-object v1, p1, Lja/x$b;->f:Ljava/util/List;

    invoke-static {v1}, Lka/c;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lja/x;->t:Ljava/util/List;

    .line 9
    iget-object v1, p1, Lja/x$b;->g:Lja/p$c;

    iput-object v1, p0, Lja/x;->u:Lja/p$c;

    .line 10
    iget-object v1, p1, Lja/x$b;->h:Ljava/net/ProxySelector;

    iput-object v1, p0, Lja/x;->v:Ljava/net/ProxySelector;

    .line 11
    iget-object v1, p1, Lja/x$b;->i:Lja/m;

    iput-object v1, p0, Lja/x;->w:Lja/m;

    .line 12
    iget-object v1, p1, Lja/x$b;->j:Lla/d;

    iput-object v1, p0, Lja/x;->x:Lla/d;

    .line 13
    iget-object v1, p1, Lja/x$b;->k:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lja/x;->y:Ljavax/net/SocketFactory;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lja/k;

    if-nez v2, :cond_51

    .line 15
    invoke-virtual {v3}, Lja/k;->d()Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_51
    const/4 v2, 0x1

    goto :goto_3d

    .line 16
    :cond_53
    iget-object v0, p1, Lja/x$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_6b

    if-nez v2, :cond_5a

    goto :goto_6b

    .line 17
    :cond_5a
    invoke-static {}, Lka/c;->C()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lja/x;->u(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lja/x;->z:Ljavax/net/ssl/SSLSocketFactory;

    .line 19
    invoke-static {v0}, Lsa/c;->b(Ljavax/net/ssl/X509TrustManager;)Lsa/c;

    move-result-object v0

    iput-object v0, p0, Lja/x;->A:Lsa/c;

    goto :goto_71

    .line 20
    :cond_6b
    :goto_6b
    iput-object v0, p0, Lja/x;->z:Ljavax/net/ssl/SSLSocketFactory;

    .line 21
    iget-object v0, p1, Lja/x$b;->m:Lsa/c;

    iput-object v0, p0, Lja/x;->A:Lsa/c;

    .line 22
    :goto_71
    iget-object v0, p0, Lja/x;->z:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_7e

    .line 23
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object v0

    iget-object v1, p0, Lja/x;->z:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lqa/g;->f(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 24
    :cond_7e
    iget-object v0, p1, Lja/x$b;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lja/x;->B:Ljavax/net/ssl/HostnameVerifier;

    .line 25
    iget-object v0, p1, Lja/x$b;->o:Lja/g;

    iget-object v1, p0, Lja/x;->A:Lsa/c;

    invoke-virtual {v0, v1}, Lja/g;->f(Lsa/c;)Lja/g;

    move-result-object v0

    iput-object v0, p0, Lja/x;->C:Lja/g;

    .line 26
    iget-object v0, p1, Lja/x$b;->p:Lja/b;

    iput-object v0, p0, Lja/x;->D:Lja/b;

    .line 27
    iget-object v0, p1, Lja/x$b;->q:Lja/b;

    iput-object v0, p0, Lja/x;->E:Lja/b;

    .line 28
    iget-object v0, p1, Lja/x$b;->r:Lja/j;

    iput-object v0, p0, Lja/x;->F:Lja/j;

    .line 29
    iget-object v0, p1, Lja/x$b;->s:Lja/o;

    iput-object v0, p0, Lja/x;->G:Lja/o;

    .line 30
    iget-boolean v0, p1, Lja/x$b;->t:Z

    iput-boolean v0, p0, Lja/x;->H:Z

    .line 31
    iget-boolean v0, p1, Lja/x$b;->u:Z

    iput-boolean v0, p0, Lja/x;->I:Z

    .line 32
    iget-boolean v0, p1, Lja/x$b;->v:Z

    iput-boolean v0, p0, Lja/x;->J:Z

    .line 33
    iget v0, p1, Lja/x$b;->w:I

    iput v0, p0, Lja/x;->K:I

    .line 34
    iget v0, p1, Lja/x$b;->x:I

    iput v0, p0, Lja/x;->L:I

    .line 35
    iget v0, p1, Lja/x$b;->y:I

    iput v0, p0, Lja/x;->M:I

    .line 36
    iget v0, p1, Lja/x$b;->z:I

    iput v0, p0, Lja/x;->N:I

    .line 37
    iget p1, p1, Lja/x$b;->A:I

    iput p1, p0, Lja/x;->O:I

    .line 38
    iget-object p1, p0, Lja/x;->s:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e7

    .line 39
    iget-object p1, p0, Lja/x;->t:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ce

    return-void

    .line 40
    :cond_ce
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lja/x;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_e7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lja/x;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_101

    :goto_100
    throw p1

    :goto_101
    goto :goto_100
.end method

.method private static u(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object v0

    invoke-virtual {v0}, Lqa/g;->m()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_16
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    const-string v0, "No System TLS"

    .line 4
    invoke-static {v0, p0}, Lka/c;->b(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A()I
    .registers 2

    .line 1
    iget v0, p0, Lja/x;->M:I

    return v0
.end method

.method public B()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/x;->J:Z

    return v0
.end method

.method public C()Ljavax/net/SocketFactory;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->y:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public D()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->z:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public E()I
    .registers 2

    .line 1
    iget v0, p0, Lja/x;->N:I

    return v0
.end method

.method public a(Lja/a0;)Lja/e;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lja/z;->g(Lja/x;Lja/a0;Z)Lja/z;

    move-result-object p1

    return-object p1
.end method

.method public b()Lja/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->E:Lja/b;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lja/x;->K:I

    return v0
.end method

.method public f()Lja/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->C:Lja/g;

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lja/x;->L:I

    return v0
.end method

.method public h()Lja/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->F:Lja/j;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lja/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lja/x;->r:Ljava/util/List;

    return-object v0
.end method

.method public j()Lja/m;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->w:Lja/m;

    return-object v0
.end method

.method public k()Lja/n;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->o:Lja/n;

    return-object v0
.end method

.method public l()Lja/o;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->G:Lja/o;

    return-object v0
.end method

.method public m()Lja/p$c;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->u:Lja/p$c;

    return-object v0
.end method

.method public n()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/x;->I:Z

    return v0
.end method

.method public o()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/x;->H:Z

    return v0
.end method

.method public p()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->B:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lja/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lja/x;->s:Ljava/util/List;

    return-object v0
.end method

.method r()Lla/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->x:Lla/d;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lja/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lja/x;->t:Ljava/util/List;

    return-object v0
.end method

.method public t()Lja/x$b;
    .registers 2

    .line 1
    new-instance v0, Lja/x$b;

    invoke-direct {v0, p0}, Lja/x$b;-><init>(Lja/x;)V

    return-object v0
.end method

.method public v()I
    .registers 2

    .line 1
    iget v0, p0, Lja/x;->O:I

    return v0
.end method

.method public w()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lja/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lja/x;->q:Ljava/util/List;

    return-object v0
.end method

.method public x()Ljava/net/Proxy;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/x;->p:Ljava/net/Proxy;

    return-object v0
.end method

.method public y()Lja/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->D:Lja/b;

    return-object v0
.end method

.method public z()Ljava/net/ProxySelector;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/x;->v:Ljava/net/ProxySelector;

    return-object v0
.end method

###### Class ja.x.a (ja.x$a)
.class Lja/x$a;
.super Lka/a;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lka/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lja/s$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Lja/s$a;->b(Ljava/lang/String;)Lja/s$a;

    return-void
.end method

.method public b(Lja/s$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2, p3}, Lja/s$a;->c(Ljava/lang/String;Ljava/lang/String;)Lja/s$a;

    return-void
.end method

.method public c(Lja/k;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2, p3}, Lja/k;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public d(Lja/c0$a;)I
    .registers 2

    .line 1
    iget p1, p1, Lja/c0$a;->c:I

    return p1
.end method

.method public e(Lja/j;Lma/c;)Z
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Lja/j;->b(Lma/c;)Z

    move-result p1

    return p1
.end method

.method public f(Lja/j;Lja/a;Lma/g;)Ljava/net/Socket;
    .registers 4

    .line 1
    invoke-virtual {p1, p2, p3}, Lja/j;->c(Lja/a;Lma/g;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public g(Lja/a;Lja/a;)Z
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Lja/a;->d(Lja/a;)Z

    move-result p1

    return p1
.end method

.method public h(Lja/j;Lja/a;Lma/g;Lja/e0;)Lma/c;
    .registers 5

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Lja/j;->d(Lja/a;Lma/g;Lja/e0;)Lma/c;

    move-result-object p1

    return-object p1
.end method

.method public i(Lja/j;Lma/c;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Lja/j;->f(Lma/c;)V

    return-void
.end method

.method public j(Lja/j;)Lma/d;
    .registers 2

    .line 1
    iget-object p1, p1, Lja/j;->e:Lma/d;

    return-object p1
.end method

.method public k(Lja/e;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lja/z;

    invoke-virtual {p1, p2}, Lja/z;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

###### Class ja.x.b (ja.x$b)
.class public final Lja/x$b;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:I

.field a:Lja/n;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/y;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/u;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/u;",
            ">;"
        }
    .end annotation
.end field

.field g:Lja/p$c;

.field h:Ljava/net/ProxySelector;

.field i:Lja/m;

.field j:Lla/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field m:Lsa/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lja/g;

.field p:Lja/b;

.field q:Lja/b;

.field r:Lja/j;

.field s:Lja/o;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lja/x$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lja/x$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Lja/n;

    invoke-direct {v0}, Lja/n;-><init>()V

    iput-object v0, p0, Lja/x$b;->a:Lja/n;

    .line 5
    sget-object v0, Lja/x;->P:Ljava/util/List;

    iput-object v0, p0, Lja/x$b;->c:Ljava/util/List;

    .line 6
    sget-object v0, Lja/x;->Q:Ljava/util/List;

    iput-object v0, p0, Lja/x$b;->d:Ljava/util/List;

    .line 7
    sget-object v0, Lja/p;->a:Lja/p;

    invoke-static {v0}, Lja/p;->k(Lja/p;)Lja/p$c;

    move-result-object v0

    iput-object v0, p0, Lja/x$b;->g:Lja/p$c;

    .line 8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lja/x$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_37

    .line 9
    new-instance v0, Lra/a;

    invoke-direct {v0}, Lra/a;-><init>()V

    iput-object v0, p0, Lja/x$b;->h:Ljava/net/ProxySelector;

    .line 10
    :cond_37
    sget-object v0, Lja/m;->a:Lja/m;

    iput-object v0, p0, Lja/x$b;->i:Lja/m;

    .line 11
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lja/x$b;->k:Ljavax/net/SocketFactory;

    .line 12
    sget-object v0, Lsa/d;->a:Lsa/d;

    iput-object v0, p0, Lja/x$b;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 13
    sget-object v0, Lja/g;->c:Lja/g;

    iput-object v0, p0, Lja/x$b;->o:Lja/g;

    .line 14
    sget-object v0, Lja/b;->a:Lja/b;

    iput-object v0, p0, Lja/x$b;->p:Lja/b;

    .line 15
    iput-object v0, p0, Lja/x$b;->q:Lja/b;

    .line 16
    new-instance v0, Lja/j;

    invoke-direct {v0}, Lja/j;-><init>()V

    iput-object v0, p0, Lja/x$b;->r:Lja/j;

    .line 17
    sget-object v0, Lja/o;->a:Lja/o;

    iput-object v0, p0, Lja/x$b;->s:Lja/o;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lja/x$b;->t:Z

    .line 19
    iput-boolean v0, p0, Lja/x$b;->u:Z

    .line 20
    iput-boolean v0, p0, Lja/x$b;->v:Z

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lja/x$b;->w:I

    const/16 v1, 0x2710

    .line 22
    iput v1, p0, Lja/x$b;->x:I

    .line 23
    iput v1, p0, Lja/x$b;->y:I

    .line 24
    iput v1, p0, Lja/x$b;->z:I

    .line 25
    iput v0, p0, Lja/x$b;->A:I

    return-void
.end method

.method constructor <init>(Lja/x;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lja/x$b;->e:Ljava/util/List;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lja/x$b;->f:Ljava/util/List;

    .line 29
    iget-object v2, p1, Lja/x;->o:Lja/n;

    iput-object v2, p0, Lja/x$b;->a:Lja/n;

    .line 30
    iget-object v2, p1, Lja/x;->p:Ljava/net/Proxy;

    iput-object v2, p0, Lja/x$b;->b:Ljava/net/Proxy;

    .line 31
    iget-object v2, p1, Lja/x;->q:Ljava/util/List;

    iput-object v2, p0, Lja/x$b;->c:Ljava/util/List;

    .line 32
    iget-object v2, p1, Lja/x;->r:Ljava/util/List;

    iput-object v2, p0, Lja/x$b;->d:Ljava/util/List;

    .line 33
    iget-object v2, p1, Lja/x;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object v0, p1, Lja/x;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p1, Lja/x;->u:Lja/p$c;

    iput-object v0, p0, Lja/x$b;->g:Lja/p$c;

    .line 36
    iget-object v0, p1, Lja/x;->v:Ljava/net/ProxySelector;

    iput-object v0, p0, Lja/x$b;->h:Ljava/net/ProxySelector;

    .line 37
    iget-object v0, p1, Lja/x;->w:Lja/m;

    iput-object v0, p0, Lja/x$b;->i:Lja/m;

    .line 38
    iget-object v0, p1, Lja/x;->x:Lla/d;

    iput-object v0, p0, Lja/x$b;->j:Lla/d;

    .line 39
    iget-object v0, p1, Lja/x;->y:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lja/x$b;->k:Ljavax/net/SocketFactory;

    .line 40
    iget-object v0, p1, Lja/x;->z:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lja/x$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 41
    iget-object v0, p1, Lja/x;->A:Lsa/c;

    iput-object v0, p0, Lja/x$b;->m:Lsa/c;

    .line 42
    iget-object v0, p1, Lja/x;->B:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lja/x$b;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 43
    iget-object v0, p1, Lja/x;->C:Lja/g;

    iput-object v0, p0, Lja/x$b;->o:Lja/g;

    .line 44
    iget-object v0, p1, Lja/x;->D:Lja/b;

    iput-object v0, p0, Lja/x$b;->p:Lja/b;

    .line 45
    iget-object v0, p1, Lja/x;->E:Lja/b;

    iput-object v0, p0, Lja/x$b;->q:Lja/b;

    .line 46
    iget-object v0, p1, Lja/x;->F:Lja/j;

    iput-object v0, p0, Lja/x$b;->r:Lja/j;

    .line 47
    iget-object v0, p1, Lja/x;->G:Lja/o;

    iput-object v0, p0, Lja/x$b;->s:Lja/o;

    .line 48
    iget-boolean v0, p1, Lja/x;->H:Z

    iput-boolean v0, p0, Lja/x$b;->t:Z

    .line 49
    iget-boolean v0, p1, Lja/x;->I:Z

    iput-boolean v0, p0, Lja/x$b;->u:Z

    .line 50
    iget-boolean v0, p1, Lja/x;->J:Z

    iput-boolean v0, p0, Lja/x$b;->v:Z

    .line 51
    iget v0, p1, Lja/x;->K:I

    iput v0, p0, Lja/x$b;->w:I

    .line 52
    iget v0, p1, Lja/x;->L:I

    iput v0, p0, Lja/x$b;->x:I

    .line 53
    iget v0, p1, Lja/x;->M:I

    iput v0, p0, Lja/x$b;->y:I

    .line 54
    iget v0, p1, Lja/x;->N:I

    iput v0, p0, Lja/x$b;->z:I

    .line 55
    iget p1, p1, Lja/x;->O:I

    iput p1, p0, Lja/x$b;->A:I

    return-void
.end method


# virtual methods
.method public a(Lja/u;)Lja/x$b;
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Lja/x$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lja/u;)Lja/x$b;
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Lja/x$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lja/b;)Lja/x$b;
    .registers 3

    const-string v0, "authenticator == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lja/x$b;->q:Lja/b;

    return-object p0
.end method

.method public d()Lja/x;
    .registers 2

    .line 1
    new-instance v0, Lja/x;

    invoke-direct {v0, p0}, Lja/x;-><init>(Lja/x$b;)V

    return-object v0
.end method

.method public e(Lja/c;)Lja/x$b;
    .registers 2
    .param p1    # Lja/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lja/x$b;->j:Lla/d;

    return-object p0
.end method

.method public f(Lja/g;)Lja/x$b;
    .registers 3

    const-string v0, "certificatePinner == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lja/x$b;->o:Lja/g;

    return-object p0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lja/x$b;
    .registers 5

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lka/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lja/x$b;->x:I

    return-object p0
.end method

.method public h(Z)Lja/x$b;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lja/x$b;->u:Z

    return-object p0
.end method

.method public i(Z)Lja/x$b;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lja/x$b;->t:Z

    return-object p0
.end method

.method public j(JLjava/util/concurrent/TimeUnit;)Lja/x$b;
    .registers 5

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lka/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lja/x$b;->y:I

    return-object p0
.end method

.method public k(JLjava/util/concurrent/TimeUnit;)Lja/x$b;
    .registers 5

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lka/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lja/x$b;->z:I

    return-object p0
.end method
