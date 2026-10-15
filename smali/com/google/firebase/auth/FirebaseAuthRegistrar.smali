###### Class com.google.firebase.auth.FirebaseAuthRegistrar (com.google.firebase.auth.FirebaseAuthRegistrar)
.class public Lcom/google/firebase/auth/FirebaseAuthRegistrar;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 7
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

    .line 1
    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lj5/b;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2
    invoke-static {v1, v3}, Lk5/c;->d(Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-class v3, Lb5/g;

    .line 3
    invoke-static {v3}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v3, Lcom/google/firebase/auth/d;->a:Lk5/h;

    .line 4
    invoke-virtual {v1, v3}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lk5/c$b;->e()Lk5/c$b;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-auth"

    const-string v3, "19.3.1"

    .line 7
    invoke-static {v1, v3}, Lt6/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk5/c;

    move-result-object v1

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
