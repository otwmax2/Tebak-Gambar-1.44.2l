###### Class da.q1 (da.q1)
.class public final Lda/q1;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"

# interfaces
.implements Lda/o0;


# static fields
.field public static final o:Lda/q1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/q1;

    invoke-direct {v0}, Lda/q1;-><init>()V

    sput-object v0, Lda/q1;->o:Lda/q1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lk9/g;
    .registers 2

    .line 1
    sget-object v0, Lk9/h;->o:Lk9/h;

    return-object v0
.end method
