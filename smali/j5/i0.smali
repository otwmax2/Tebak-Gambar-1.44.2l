###### Class j5.i0 (j5.i0)
.class public final Lj5/i0;
.super Lg5/y;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final a:Lj5/e0;


# direct methods
.method public constructor <init>(Lj5/e0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lg5/y;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lj5/i0;->a:Lj5/e0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg5/z;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj5/i0;->a:Lj5/e0;

    invoke-virtual {v0}, Lj5/e0;->u4()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
