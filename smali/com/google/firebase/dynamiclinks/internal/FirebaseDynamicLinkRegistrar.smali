###### Class com.google.firebase.dynamiclinks.internal.FirebaseDynamicLinkRegistrar (com.google.firebase.dynamiclinks.internal.FirebaseDynamicLinkRegistrar)
.class public final Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinkRegistrar;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"

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
.method public final getComponents()Ljava/util/List;
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

    .line 1
    const-class v0, La6/a;

    .line 2
    invoke-static {v0}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v0

    const-class v1, Lb5/g;

    .line 3
    invoke-static {v1}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v0

    const-class v1, Le5/a;

    .line 4
    invoke-static {v1}, Lk5/r;->h(Ljava/lang/Class;)Lk5/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/dynamiclinks/internal/a;->a:Lk5/h;

    .line 5
    invoke-virtual {v0, v1}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lk5/c$b;->d()Lk5/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lk5/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
