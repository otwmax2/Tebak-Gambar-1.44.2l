###### Class com.google.firebase.ktx.FirebaseCommonLegacyRegistrar (com.google.firebase.ktx.FirebaseCommonLegacyRegistrar)
.class public final Lcom/google/firebase/ktx/FirebaseCommonLegacyRegistrar;
.super Ljava/lang/Object;
.source "Logging.kt"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "fire-core-ktx"

    const-string v1, "20.4.2"

    .line 1
    invoke-static {v0, v1}, Lt6/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk5/c;

    move-result-object v0

    invoke-static {v0}, Li9/j;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
