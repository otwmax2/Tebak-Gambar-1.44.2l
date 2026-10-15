###### Class com.twitter.sdk.android.core.q (com.twitter.sdk.android.core.q)
.class public Lcom/twitter/sdk/android/core/q;
.super Lcom/twitter/sdk/android/core/y;
.source "TwitterApiException.java"


# instance fields
.field private final o:Lf9/a;

.field private final p:Lcom/twitter/sdk/android/core/z;

.field private final q:I

.field private final r:Lwa/l;


# direct methods
.method public constructor <init>(Lwa/l;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/twitter/sdk/android/core/q;->c(Lwa/l;)Lf9/a;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/sdk/android/core/q;->d(Lwa/l;)Lcom/twitter/sdk/android/core/z;

    move-result-object v1

    invoke-virtual {p1}, Lwa/l;->b()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/sdk/android/core/q;-><init>(Lwa/l;Lf9/a;Lcom/twitter/sdk/android/core/z;I)V

    return-void
.end method

.method constructor <init>(Lwa/l;Lf9/a;Lcom/twitter/sdk/android/core/z;I)V
    .registers 6

    .line 2
    invoke-static {p4}, Lcom/twitter/sdk/android/core/q;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/y;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/core/q;->o:Lf9/a;

    .line 4
    iput-object p3, p0, Lcom/twitter/sdk/android/core/q;->p:Lcom/twitter/sdk/android/core/z;

    .line 5
    iput p4, p0, Lcom/twitter/sdk/android/core/q;->q:I

    .line 6
    iput-object p1, p0, Lcom/twitter/sdk/android/core/q;->r:Lwa/l;

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP request failed, Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/String;)Lf9/a;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    new-instance v1, Lf9/l;

    invoke-direct {v1}, Lf9/l;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->d(Lcom/google/gson/x;)Lcom/google/gson/g;

    move-result-object v0

    new-instance v1, Lf9/m;

    invoke-direct {v1}, Lf9/m;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->d(Lcom/google/gson/x;)Lcom/google/gson/g;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    .line 5
    :try_start_1b
    const-class v1, Lf9/b;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf9/b;

    .line 6
    iget-object v1, v0, Lf9/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 7
    iget-object v0, v0, Lf9/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf9/a;
    :try_end_34
    .catch Lcom/google/gson/u; {:try_start_1b .. :try_end_34} :catch_35

    return-object v0

    :catch_35
    move-exception v0

    .line 8
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Twitter"

    invoke-interface {v1, v2, p0, v0}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_50
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lwa/l;)Lf9/a;
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lwa/l;->d()Lja/d0;

    move-result-object p0

    invoke-virtual {p0}, Lja/d0;->source()Lokio/e;

    move-result-object p0

    invoke-interface {p0}, Lokio/e;->B()Lokio/c;

    move-result-object p0

    invoke-virtual {p0}, Lokio/c;->d()Lokio/c;

    move-result-object p0

    invoke-virtual {p0}, Lokio/c;->o()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3
    invoke-static {p0}, Lcom/twitter/sdk/android/core/q;->b(Ljava/lang/String;)Lf9/a;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    .line 4
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Unexpected response"

    invoke-interface {v0, v1, v2, p0}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lwa/l;)Lcom/twitter/sdk/android/core/z;
    .registers 2

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/z;

    invoke-virtual {p0}, Lwa/l;->e()Lja/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/z;-><init>(Lja/s;)V

    return-object v0
.end method
