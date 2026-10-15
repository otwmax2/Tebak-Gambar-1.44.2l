###### Class com.google.firebase.messaging.FirebaseMessagingRegistrar (com.google.firebase.messaging.FirebaseMessagingRegistrar)
.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$getComponents$0$FirebaseMessagingRegistrar(Lk5/e;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .registers 10

    .line 1
    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lb5/g;

    .line 2
    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb5/g;

    const-class v0, Lj6/a;

    .line 3
    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lj6/a;

    const-class v0, Lt6/i;

    .line 4
    invoke-interface {p0, v0}, Lk5/e;->c(Ljava/lang/Class;)Lk6/b;

    move-result-object v3

    const-class v0, Li6/j;

    .line 5
    invoke-interface {p0, v0}, Lk5/e;->c(Ljava/lang/Class;)Lk6/b;

    move-result-object v4

    const-class v0, Ll6/e;

    .line 6
    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ll6/e;

    const-class v0, Lj3/g;

    .line 7
    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lj3/g;

    const-class v0, Lh6/d;

    .line 8
    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lh6/d;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lb5/g;Lj6/a;Lk6/b;Lk6/b;Ll6/e;Lj3/g;Lh6/d;)V

    return-object v8
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk5/c;

    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 1
    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lb5/g;

    .line 2
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lj6/a;

    .line 3
    invoke-static {v2}, Lk5/r;->h(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lt6/i;

    .line 4
    invoke-static {v2}, Lk5/r;->i(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Li6/j;

    .line 5
    invoke-static {v2}, Lk5/r;->i(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lj3/g;

    .line 6
    invoke-static {v2}, Lk5/r;->h(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Ll6/e;

    .line 7
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lh6/d;

    .line 8
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/messaging/x;->a:Lk5/h;

    .line 9
    invoke-virtual {v1, v2}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lk5/c$b;->c()Lk5/c$b;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-fcm"

    const-string v2, "22.0.0"

    .line 12
    invoke-static {v1, v2}, Lt6/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk5/c;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
