###### Class da.w2 (da.w2)
.class public final Lda/w2;
.super Lk9/a;
.source "Unconfined.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda/w2$a;
    }
.end annotation


# static fields
.field public static final q:Lda/w2$a;


# instance fields
.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lda/w2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lda/w2$a;-><init>(Lt9/g;)V

    sput-object v0, Lda/w2;->q:Lda/w2$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lda/w2;->q:Lda/w2$a;

    invoke-direct {p0, v0}, Lk9/a;-><init>(Lk9/g$c;)V

    return-void
.end method

###### Class da.w2.a (da.w2$a)
.class public final Lda/w2$a;
.super Ljava/lang/Object;
.source "Unconfined.kt"

# interfaces
.implements Lk9/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/g$c<",
        "Lda/w2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lda/w2$a;-><init>()V

    return-void
.end method
