###### Class f9.k (f9.k)
.class public Lf9/k;
.super Ljava/lang/Object;
.source "Place.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf9/k$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation runtime Lb7/c;
        value = "attributes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf9/k$a;
    .annotation runtime Lb7/c;
        value = "bounding_box"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "country"
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "country_code"
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "full_name"
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "id"
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "name"
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "place_type"
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "url"
    .end annotation
.end field

###### Class f9.k.a (f9.k$a)
.class public Lf9/k$a;
.super Ljava/lang/Object;
.source "Place.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf9/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation runtime Lb7/c;
        value = "coordinates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lf9/k$a;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lf9/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf9/k$a;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lf9/k$a;->b:Ljava/lang/String;

    return-void
.end method
