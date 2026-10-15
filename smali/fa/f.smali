###### Class fa.f (fa.f)
.class public interface abstract Lfa/f;
.super Ljava/lang/Object;
.source "Channel.kt"

# interfaces
.implements Lfa/s;
.implements Lfa/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfa/s<",
        "TE;>;",
        "Lfa/o<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final a:Lfa/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lfa/f$a;->a:Lfa/f$a;

    sput-object v0, Lfa/f;->a:Lfa/f$a;

    return-void
.end method

###### Class fa.f.a (fa.f$a)
.class public final Lfa/f$a;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lfa/f$a;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lfa/f$a;

    invoke-direct {v0}, Lfa/f$a;-><init>()V

    sput-object v0, Lfa/f$a;->a:Lfa/f$a;

    const-string v0, "kotlinx.coroutines.channels.defaultBuffer"

    const/16 v1, 0x40

    const/4 v2, 0x1

    const v3, 0x7ffffffe

    .line 1
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/internal/f0;->b(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lfa/f$a;->b:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    sget v0, Lfa/f$a;->b:I

    return v0
.end method
