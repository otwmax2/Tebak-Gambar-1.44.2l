package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.appevents.AppEventsConstants;
import com.vungle.mediation.BuildConfig;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: SuggestionsAdapter.java */
/* JADX INFO: loaded from: classes.dex */
class q0 extends a0.c implements View.OnClickListener {
    private final SearchableInfo A;
    private final Context B;
    private final WeakHashMap<String, Drawable.ConstantState> C;
    private final int D;
    private boolean E;
    private int F;
    private ColorStateList G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final SearchView f1164z;

    /* JADX INFO: compiled from: SuggestionsAdapter.java */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f1165a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f1166b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImageView f1167c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final ImageView f1168d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImageView f1169e;

        public a(View view) {
            this.f1165a = (TextView) view.findViewById(R.id.text1);
            this.f1166b = (TextView) view.findViewById(R.id.text2);
            this.f1167c = (ImageView) view.findViewById(R.id.icon1);
            this.f1168d = (ImageView) view.findViewById(R.id.icon2);
            this.f1169e = (ImageView) view.findViewById(f.f.f29069q);
        }
    }

    public q0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.E = false;
        this.F = 1;
        this.H = -1;
        this.I = -1;
        this.J = -1;
        this.K = -1;
        this.L = -1;
        this.M = -1;
        this.f1164z = searchView;
        this.A = searchableInfo;
        this.D = searchView.getSuggestionCommitIconResId();
        this.B = context;
        this.C = weakHashMap;
    }

    private Drawable A(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return B(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream inputStreamOpenInputStream = this.B.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                return Drawable.createFromStream(inputStreamOpenInputStream, null);
            } finally {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException e10) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e10);
                }
            }
        } catch (FileNotFoundException e11) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e11.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e11.getMessage());
        return null;
    }

    private Drawable C(String str) {
        if (str == null || str.isEmpty() || AppEventsConstants.EVENT_PARAM_VALUE_NO.equals(str)) {
            return null;
        }
        try {
            int i10 = Integer.parseInt(str);
            String str2 = "android.resource://" + this.B.getPackageName() + "/" + i10;
            Drawable drawableU = u(str2);
            if (drawableU != null) {
                return drawableU;
            }
            Drawable drawableF = androidx.core.content.a.f(this.B, i10);
            K(str2, drawableF);
            return drawableF;
        } catch (Resources.NotFoundException unused) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable drawableU2 = u(str);
            if (drawableU2 != null) {
                return drawableU2;
            }
            Drawable drawableA = A(Uri.parse(str));
            K(str, drawableA);
            return drawableA;
        }
    }

    private Drawable D(Cursor cursor) {
        int i10 = this.K;
        if (i10 == -1) {
            return null;
        }
        Drawable drawableC = C(cursor.getString(i10));
        return drawableC != null ? drawableC : z();
    }

    private Drawable E(Cursor cursor) {
        int i10 = this.L;
        if (i10 == -1) {
            return null;
        }
        return C(cursor.getString(i10));
    }

    private static String G(Cursor cursor, int i10) {
        if (i10 == -1) {
            return null;
        }
        try {
            return cursor.getString(i10);
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e10);
            return null;
        }
    }

    private void I(ImageView imageView, Drawable drawable, int i10) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i10);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private void J(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private void K(String str, Drawable drawable) {
        if (drawable != null) {
            this.C.put(str, drawable.getConstantState());
        }
    }

    private void L(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    private Drawable u(String str) {
        Drawable.ConstantState constantState = this.C.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private CharSequence v(CharSequence charSequence) {
        if (this.G == null) {
            TypedValue typedValue = new TypedValue();
            this.B.getTheme().resolveAttribute(f.a.L, typedValue, true);
            this.G = this.B.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.G, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private Drawable w(ComponentName componentName) {
        PackageManager packageManager = this.B.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("SuggestionsAdapter", e10.toString());
            return null;
        }
    }

    private Drawable x(ComponentName componentName) {
        String strFlattenToShortString = componentName.flattenToShortString();
        if (!this.C.containsKey(strFlattenToShortString)) {
            Drawable drawableW = w(componentName);
            this.C.put(strFlattenToShortString, drawableW != null ? drawableW.getConstantState() : null);
            return drawableW;
        }
        Drawable.ConstantState constantState = this.C.get(strFlattenToShortString);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable(this.B.getResources());
    }

    public static String y(Cursor cursor, String str) {
        return G(cursor, cursor.getColumnIndex(str));
    }

    private Drawable z() {
        Drawable drawableX = x(this.A.getSearchActivity());
        return drawableX != null ? drawableX : this.B.getPackageManager().getDefaultActivityIcon();
    }

    Drawable B(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.B.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    Cursor F(SearchableInfo searchableInfo, String str, int i10) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query(BuildConfig.FLAVOR).fragment(BuildConfig.FLAVOR);
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i10 > 0) {
            builderFragment.appendQueryParameter("limit", String.valueOf(i10));
        }
        return this.B.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    public void H(int i10) {
        this.F = i10;
    }

    @Override // a0.a, a0.b.a
    public void a(Cursor cursor) {
        if (this.E) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.H = cursor.getColumnIndex("suggest_text_1");
                this.I = cursor.getColumnIndex("suggest_text_2");
                this.J = cursor.getColumnIndex("suggest_text_2_url");
                this.K = cursor.getColumnIndex("suggest_icon_1");
                this.L = cursor.getColumnIndex("suggest_icon_2");
                this.M = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e10);
        }
    }

    @Override // a0.a, a0.b.a
    public CharSequence d(Cursor cursor) {
        String strY;
        String strY2;
        if (cursor == null) {
            return null;
        }
        String strY3 = y(cursor, "suggest_intent_query");
        if (strY3 != null) {
            return strY3;
        }
        if (this.A.shouldRewriteQueryFromData() && (strY2 = y(cursor, "suggest_intent_data")) != null) {
            return strY2;
        }
        if (!this.A.shouldRewriteQueryFromText() || (strY = y(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return strY;
    }

    @Override // a0.b.a
    public Cursor e(CharSequence charSequence) {
        String string = charSequence == null ? BuildConfig.FLAVOR : charSequence.toString();
        if (this.f1164z.getVisibility() == 0 && this.f1164z.getWindowVisibility() == 0) {
            try {
                Cursor cursorF = F(this.A, string, 50);
                if (cursorF != null) {
                    cursorF.getCount();
                    return cursorF;
                }
            } catch (RuntimeException e10) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e10);
            }
        }
        return null;
    }

    @Override // a0.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View viewQ = q(this.B, b(), viewGroup);
            if (viewQ != null) {
                ((a) viewQ.getTag()).f1165a.setText(e10.toString());
            }
            return viewQ;
        }
    }

    @Override // a0.a, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View viewR = r(this.B, b(), viewGroup);
            if (viewR != null) {
                ((a) viewR.getTag()).f1165a.setText(e10.toString());
            }
            return viewR;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        L(b());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        L(b());
    }

    @Override // a0.a
    public void o(View view, Context context, Cursor cursor) {
        a aVar = (a) view.getTag();
        int i10 = this.M;
        int i11 = i10 != -1 ? cursor.getInt(i10) : 0;
        if (aVar.f1165a != null) {
            J(aVar.f1165a, G(cursor, this.H));
        }
        if (aVar.f1166b != null) {
            String strG = G(cursor, this.J);
            CharSequence charSequenceV = strG != null ? v(strG) : G(cursor, this.I);
            if (TextUtils.isEmpty(charSequenceV)) {
                TextView textView = aVar.f1165a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f1165a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f1165a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f1165a.setMaxLines(1);
                }
            }
            J(aVar.f1166b, charSequenceV);
        }
        ImageView imageView = aVar.f1167c;
        if (imageView != null) {
            I(imageView, D(cursor), 4);
        }
        ImageView imageView2 = aVar.f1168d;
        if (imageView2 != null) {
            I(imageView2, E(cursor), 8);
        }
        int i12 = this.F;
        if (i12 != 2 && (i12 != 1 || (i11 & 1) == 0)) {
            aVar.f1169e.setVisibility(8);
            return;
        }
        aVar.f1169e.setVisibility(0);
        aVar.f1169e.setTag(aVar.f1165a.getText());
        aVar.f1169e.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1164z.U((CharSequence) tag);
        }
    }

    @Override // a0.c, a0.a
    public View r(Context context, Cursor cursor, ViewGroup viewGroup) {
        View viewR = super.r(context, cursor, viewGroup);
        viewR.setTag(new a(viewR));
        ((ImageView) viewR.findViewById(f.f.f29069q)).setImageResource(this.D);
        return viewR;
    }
}
