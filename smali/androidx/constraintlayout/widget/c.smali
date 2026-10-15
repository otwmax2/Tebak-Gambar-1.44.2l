###### Class androidx.constraintlayout.widget.c (androidx.constraintlayout.widget.c)
.class public Landroidx/constraintlayout/widget/c;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/c$b;,
        Landroidx/constraintlayout/widget/c$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field b:Landroidx/constraintlayout/widget/d;

.field c:I

.field d:I

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/c;->c:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/c;->d:I

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->e:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->f:Landroid/util/SparseArray;

    .line 6
    iput-object p2, p0, Landroidx/constraintlayout/widget/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    :try_start_9
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_d
    const/4 v2, 0x1

    if-eq v1, v2, :cond_8c

    if-eqz v1, :cond_7b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    goto/16 :goto_7e

    .line 4
    :cond_17
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    sparse-switch v5, :sswitch_data_8e

    goto :goto_57

    :sswitch_26
    const-string v2, "Variant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v2, 0x3

    goto :goto_58

    :sswitch_30
    const-string v2, "layoutDescription"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v2, 0x0

    goto :goto_58

    :sswitch_3a
    const-string v5, "StateSet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_58

    :sswitch_43
    const-string v2, "State"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v2, 0x2

    goto :goto_58

    :sswitch_4d
    const-string v2, "ConstraintSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v2, 0x4

    goto :goto_58

    :cond_57
    :goto_57
    const/4 v2, -0x1

    :goto_58
    if-eq v2, v3, :cond_6e

    if-eq v2, v7, :cond_63

    if-eq v2, v6, :cond_5f

    goto :goto_7e

    .line 6
    :cond_5f
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/c;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7e

    .line 7
    :cond_63
    new-instance v1, Landroidx/constraintlayout/widget/c$b;

    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/c$b;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v0, :cond_7e

    .line 8
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/c$b;)V

    goto :goto_7e

    .line 9
    :cond_6e
    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/c$a;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->e:Landroid/util/SparseArray;

    iget v2, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7e

    .line 11
    :cond_7b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 12
    :cond_7e
    :goto_7e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_82
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_82} :catch_88
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_82} :catch_83

    goto :goto_d

    :catch_83
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8c

    :catch_88
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_8c
    :goto_8c
    return-void

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x50764adb -> :sswitch_4d
        0x4c7d471 -> :sswitch_43
        0x526c4e31 -> :sswitch_3a
        0x62ce7272 -> :sswitch_30
        0x7155a865 -> :sswitch_26
    .end sparse-switch
.end method

.method private b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d;-><init>()V

    .line 2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_68

    .line 3
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_65

    if-nez v4, :cond_19

    goto :goto_65

    :cond_19
    const-string v5, "id"

    .line 5
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    const-string v1, "/"

    .line 6
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_43

    const/16 v1, 0x2f

    .line 7
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_44

    :cond_43
    const/4 v1, -0x1

    :goto_44
    if-ne v1, v2, :cond_5c

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_55

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5c

    :cond_55
    const-string v2, "ConstraintLayoutStates"

    const-string v3, "error in parsing id"

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_5c
    :goto_5c
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/d;->n(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/widget/c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_68

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_68
    :goto_68
    return-void
.end method


# virtual methods
.method public c(Landroidx/constraintlayout/widget/f;)V
    .registers 2

    return-void
.end method

.method public d(IFF)V
    .registers 8

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/c;->c:I

    const/4 v1, -0x1

    if-ne v0, p1, :cond_5c

    if-ne p1, v1, :cond_11

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/c;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/c$a;

    goto :goto_19

    .line 3
    :cond_11
    iget-object p1, p0, Landroidx/constraintlayout/widget/c;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/c$a;

    .line 4
    :goto_19
    iget v0, p0, Landroidx/constraintlayout/widget/c;->d:I

    if-eq v0, v1, :cond_2c

    .line 5
    iget-object v2, p1, Landroidx/constraintlayout/widget/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/c$b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    .line 6
    :cond_2c
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/c$a;->b(FF)I

    move-result p2

    .line 7
    iget p3, p0, Landroidx/constraintlayout/widget/c;->d:I

    if-ne p3, p2, :cond_35

    return-void

    :cond_35
    if-ne p2, v1, :cond_3a

    .line 8
    iget-object p3, p0, Landroidx/constraintlayout/widget/c;->b:Landroidx/constraintlayout/widget/d;

    goto :goto_44

    .line 9
    :cond_3a
    iget-object p3, p1, Landroidx/constraintlayout/widget/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/widget/c$b;

    iget-object p3, p3, Landroidx/constraintlayout/widget/c$b;->f:Landroidx/constraintlayout/widget/d;

    :goto_44
    if-ne p2, v1, :cond_47

    goto :goto_51

    .line 10
    :cond_47
    iget-object p1, p1, Landroidx/constraintlayout/widget/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/c$b;

    iget p1, p1, Landroidx/constraintlayout/widget/c$b;->e:I

    :goto_51
    if-nez p3, :cond_54

    return-void

    .line 11
    :cond_54
    iput p2, p0, Landroidx/constraintlayout/widget/c;->d:I

    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/widget/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_b6

    .line 13
    :cond_5c
    iput p1, p0, Landroidx/constraintlayout/widget/c;->c:I

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/c$a;

    .line 15
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/c$a;->b(FF)I

    move-result v2

    if-ne v2, v1, :cond_6f

    .line 16
    iget-object v3, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/d;

    goto :goto_79

    .line 17
    :cond_6f
    iget-object v3, v0, Landroidx/constraintlayout/widget/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/c$b;

    iget-object v3, v3, Landroidx/constraintlayout/widget/c$b;->f:Landroidx/constraintlayout/widget/d;

    :goto_79
    if-ne v2, v1, :cond_7c

    goto :goto_86

    .line 18
    :cond_7c
    iget-object v0, v0, Landroidx/constraintlayout/widget/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/c$b;

    iget v0, v0, Landroidx/constraintlayout/widget/c$b;->e:I

    :goto_86
    if-nez v3, :cond_af

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO Constraint set found ! id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dim ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConstraintLayoutStates"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_af
    iput v2, p0, Landroidx/constraintlayout/widget/c;->d:I

    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/widget/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, p1}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_b6
    return-void
.end method

###### Class androidx.constraintlayout.widget.c.a (androidx.constraintlayout.widget.c$a)
.class Landroidx/constraintlayout/widget/c$a;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/c$b;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Landroidx/constraintlayout/widget/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->c:I

    .line 4
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 5
    sget-object v0, Landroidx/constraintlayout/widget/i;->U6:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_65

    .line 7
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 8
    sget v3, Landroidx/constraintlayout/widget/i;->V6:I

    if-ne v2, v3, :cond_2f

    .line 9
    iget v3, p0, Landroidx/constraintlayout/widget/c$a;->a:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->a:I

    goto :goto_62

    .line 10
    :cond_2f
    sget v3, Landroidx/constraintlayout/widget/i;->W6:I

    if-ne v2, v3, :cond_62

    .line 11
    iget v3, p0, Landroidx/constraintlayout/widget/c$a;->c:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->c:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/widget/c$a;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/widget/c$a;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v3, "layout"

    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 15
    new-instance v2, Landroidx/constraintlayout/widget/d;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/d;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/d;

    .line 16
    iget v3, p0, Landroidx/constraintlayout/widget/c$a;->c:I

    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/widget/d;->f(Landroid/content/Context;I)V

    :cond_62
    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 17
    :cond_65
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method a(Landroidx/constraintlayout/widget/c$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(FF)I
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/widget/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/widget/c$b;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

###### Class androidx.constraintlayout.widget.c.b (androidx.constraintlayout.widget.c$b)
.class Landroidx/constraintlayout/widget/c$b;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:I

.field f:Landroidx/constraintlayout/widget/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->a:F

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->b:F

    .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->c:F

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->d:F

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    .line 7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 8
    sget-object v0, Landroidx/constraintlayout/widget/i;->s7:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_97

    .line 10
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 11
    sget v3, Landroidx/constraintlayout/widget/i;->t7:I

    if-ne v2, v3, :cond_59

    .line 12
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v3, "layout"

    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 16
    new-instance v2, Landroidx/constraintlayout/widget/d;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/d;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/c$b;->f:Landroidx/constraintlayout/widget/d;

    .line 17
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/widget/d;->f(Landroid/content/Context;I)V

    goto :goto_94

    .line 18
    :cond_59
    sget v3, Landroidx/constraintlayout/widget/i;->u7:I

    if-ne v2, v3, :cond_66

    .line 19
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->d:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->d:F

    goto :goto_94

    .line 20
    :cond_66
    sget v3, Landroidx/constraintlayout/widget/i;->v7:I

    if-ne v2, v3, :cond_73

    .line 21
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->b:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->b:F

    goto :goto_94

    .line 22
    :cond_73
    sget v3, Landroidx/constraintlayout/widget/i;->w7:I

    if-ne v2, v3, :cond_80

    .line 23
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->c:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->c:F

    goto :goto_94

    .line 24
    :cond_80
    sget v3, Landroidx/constraintlayout/widget/i;->x7:I

    if-ne v2, v3, :cond_8d

    .line 25
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->a:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->a:F

    goto :goto_94

    :cond_8d
    const-string v2, "ConstraintLayoutStates"

    const-string v3, "Unknown tag"

    .line 26
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    :goto_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 27
    :cond_97
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method a(FF)Z
    .registers 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/c$b;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 2
    iget v0, p0, Landroidx/constraintlayout/widget/c$b;->a:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    return v1

    .line 3
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/widget/c$b;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4
    iget v0, p0, Landroidx/constraintlayout/widget/c$b;->b:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    return v1

    .line 5
    :cond_1f
    iget v0, p0, Landroidx/constraintlayout/widget/c$b;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 6
    iget v0, p0, Landroidx/constraintlayout/widget/c$b;->c:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2e

    return v1

    .line 7
    :cond_2e
    iget p1, p0, Landroidx/constraintlayout/widget/c$b;->d:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 8
    iget p1, p0, Landroidx/constraintlayout/widget/c$b;->d:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3d

    return v1

    :cond_3d
    const/4 p1, 0x1

    return p1
.end method
